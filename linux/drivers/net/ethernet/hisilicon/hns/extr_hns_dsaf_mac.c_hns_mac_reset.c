
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mac_driver {int (* mac_pausefrm_cfg ) (struct mac_driver*,int,int) ;int (* set_an_mode ) (struct mac_driver*,int) ;int (* set_tx_auto_pause_frames ) (struct mac_driver*,int ) ;int (* config_max_frame_length ) (struct mac_driver*,int ) ;int (* mac_init ) (struct mac_driver*) ;} ;
struct hns_mac_cb {scalar_t__ mac_type; int tx_pause_frm_time; int max_frm; TYPE_1__* dsaf_dev; } ;
struct TYPE_2__ {int dsaf_ver; } ;


 int AE_IS_VER1 (int ) ;
 scalar_t__ HNAE_PORT_DEBUG ;
 struct mac_driver* hns_mac_get_drv (struct hns_mac_cb*) ;
 int stub1 (struct mac_driver*) ;
 int stub2 (struct mac_driver*,int ) ;
 int stub3 (struct mac_driver*,int ) ;
 int stub4 (struct mac_driver*,int) ;
 int stub5 (struct mac_driver*,int,int) ;
 int stub6 (struct mac_driver*,int,int) ;

void hns_mac_reset(struct hns_mac_cb *mac_cb)
{
 struct mac_driver *drv = hns_mac_get_drv(mac_cb);
 bool is_ver1 = AE_IS_VER1(mac_cb->dsaf_dev->dsaf_ver);

 drv->mac_init(drv);

 if (drv->config_max_frame_length)
  drv->config_max_frame_length(drv, mac_cb->max_frm);

 if (drv->set_tx_auto_pause_frames)
  drv->set_tx_auto_pause_frames(drv, mac_cb->tx_pause_frm_time);

 if (drv->set_an_mode)
  drv->set_an_mode(drv, 1);

 if (drv->mac_pausefrm_cfg) {
  if (mac_cb->mac_type == HNAE_PORT_DEBUG)
   drv->mac_pausefrm_cfg(drv, !is_ver1, !is_ver1);
  else
   drv->mac_pausefrm_cfg(drv, 0, 1);
 }
}
