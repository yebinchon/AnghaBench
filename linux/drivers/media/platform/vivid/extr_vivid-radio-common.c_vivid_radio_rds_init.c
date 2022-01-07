
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_45__ TYPE_9__ ;
typedef struct TYPE_44__ TYPE_8__ ;
typedef struct TYPE_43__ TYPE_7__ ;
typedef struct TYPE_42__ TYPE_6__ ;
typedef struct TYPE_41__ TYPE_5__ ;
typedef struct TYPE_40__ TYPE_4__ ;
typedef struct TYPE_39__ TYPE_3__ ;
typedef struct TYPE_38__ TYPE_2__ ;
typedef struct TYPE_37__ TYPE_22__ ;
typedef struct TYPE_36__ TYPE_21__ ;
typedef struct TYPE_35__ TYPE_20__ ;
typedef struct TYPE_34__ TYPE_1__ ;
typedef struct TYPE_33__ TYPE_19__ ;
typedef struct TYPE_32__ TYPE_18__ ;
typedef struct TYPE_31__ TYPE_17__ ;
typedef struct TYPE_30__ TYPE_16__ ;
typedef struct TYPE_29__ TYPE_15__ ;
typedef struct TYPE_28__ TYPE_14__ ;
typedef struct TYPE_27__ TYPE_13__ ;
typedef struct TYPE_26__ TYPE_12__ ;
typedef struct TYPE_25__ TYPE_11__ ;
typedef struct TYPE_24__ TYPE_10__ ;


struct vivid_rds_gen {int radiotext; int psname; int ms; int tp; int ta; int pty; int dyn_pty; int compressed; int art_head; int mono_stereo; int picode; } ;
struct vivid_dev {int radio_rx_rds_use_alternates; scalar_t__ radio_rds_loop; int radio_rx_rds_radiotext; int radio_rx_rds_psname; int radio_rx_rds_ms; int radio_rx_rds_tp; int radio_rx_rds_ta; int radio_rx_rds_pty; scalar_t__ radio_rx_rds_controls; int radio_rx_freq; TYPE_22__* radio_tx_rds_pi; TYPE_21__* radio_tx_rds_radiotext; TYPE_19__* radio_tx_rds_psname; TYPE_17__* radio_tx_rds_ms; TYPE_15__* radio_tx_rds_tp; TYPE_13__* radio_tx_rds_ta; TYPE_11__* radio_tx_rds_dyn_pty; TYPE_9__* radio_tx_rds_compressed; TYPE_7__* radio_tx_rds_art_head; TYPE_5__* radio_tx_rds_mono_stereo; TYPE_3__* radio_tx_rds_pty; int radio_tx_rds_controls; struct vivid_rds_gen rds_gen; } ;
struct TYPE_44__ {int val; } ;
struct TYPE_45__ {TYPE_8__ cur; } ;
struct TYPE_42__ {int val; } ;
struct TYPE_43__ {TYPE_6__ cur; } ;
struct TYPE_40__ {int val; } ;
struct TYPE_41__ {TYPE_4__ cur; } ;
struct TYPE_38__ {int val; } ;
struct TYPE_39__ {TYPE_2__ cur; } ;
struct TYPE_34__ {int val; } ;
struct TYPE_37__ {TYPE_1__ cur; } ;
struct TYPE_35__ {scalar_t__ p_char; } ;
struct TYPE_36__ {TYPE_20__ p_cur; } ;
struct TYPE_32__ {scalar_t__ p_char; } ;
struct TYPE_33__ {TYPE_18__ p_cur; } ;
struct TYPE_30__ {int val; } ;
struct TYPE_31__ {TYPE_16__ cur; } ;
struct TYPE_28__ {int val; } ;
struct TYPE_29__ {TYPE_14__ cur; } ;
struct TYPE_26__ {int val; } ;
struct TYPE_27__ {TYPE_12__ cur; } ;
struct TYPE_24__ {int val; } ;
struct TYPE_25__ {TYPE_10__ cur; } ;


 int strscpy (int ,scalar_t__,int) ;
 int v4l2_ctrl_lock (TYPE_22__*) ;
 int v4l2_ctrl_s_ctrl (int ,int ) ;
 int v4l2_ctrl_s_ctrl_string (int ,int ) ;
 int v4l2_ctrl_unlock (TYPE_22__*) ;
 int vivid_rds_gen_fill (struct vivid_rds_gen*,int ,int) ;
 int vivid_rds_generate (struct vivid_rds_gen*) ;

void vivid_radio_rds_init(struct vivid_dev *dev)
{
 struct vivid_rds_gen *rds = &dev->rds_gen;
 bool alt = dev->radio_rx_rds_use_alternates;


 if (dev->radio_rds_loop && !dev->radio_tx_rds_controls)
  return;

 if (dev->radio_rds_loop) {
  v4l2_ctrl_lock(dev->radio_tx_rds_pi);
  rds->picode = dev->radio_tx_rds_pi->cur.val;
  rds->pty = dev->radio_tx_rds_pty->cur.val;
  rds->mono_stereo = dev->radio_tx_rds_mono_stereo->cur.val;
  rds->art_head = dev->radio_tx_rds_art_head->cur.val;
  rds->compressed = dev->radio_tx_rds_compressed->cur.val;
  rds->dyn_pty = dev->radio_tx_rds_dyn_pty->cur.val;
  rds->ta = dev->radio_tx_rds_ta->cur.val;
  rds->tp = dev->radio_tx_rds_tp->cur.val;
  rds->ms = dev->radio_tx_rds_ms->cur.val;
  strscpy(rds->psname,
   dev->radio_tx_rds_psname->p_cur.p_char,
   sizeof(rds->psname));
  strscpy(rds->radiotext,
   dev->radio_tx_rds_radiotext->p_cur.p_char + alt * 64,
   sizeof(rds->radiotext));
  v4l2_ctrl_unlock(dev->radio_tx_rds_pi);
 } else {
  vivid_rds_gen_fill(rds, dev->radio_rx_freq, alt);
 }
 if (dev->radio_rx_rds_controls) {
  v4l2_ctrl_s_ctrl(dev->radio_rx_rds_pty, rds->pty);
  v4l2_ctrl_s_ctrl(dev->radio_rx_rds_ta, rds->ta);
  v4l2_ctrl_s_ctrl(dev->radio_rx_rds_tp, rds->tp);
  v4l2_ctrl_s_ctrl(dev->radio_rx_rds_ms, rds->ms);
  v4l2_ctrl_s_ctrl_string(dev->radio_rx_rds_psname, rds->psname);
  v4l2_ctrl_s_ctrl_string(dev->radio_rx_rds_radiotext, rds->radiotext);
  if (!dev->radio_rds_loop)
   dev->radio_rx_rds_use_alternates = !dev->radio_rx_rds_use_alternates;
 }
 vivid_rds_generate(rds);
}
