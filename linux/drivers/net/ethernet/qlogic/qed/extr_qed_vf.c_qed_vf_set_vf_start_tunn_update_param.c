
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int b_update_mode; scalar_t__ b_mode_enabled; } ;
struct TYPE_8__ {int b_update_mode; scalar_t__ b_mode_enabled; } ;
struct TYPE_7__ {int b_update_mode; scalar_t__ b_mode_enabled; } ;
struct TYPE_6__ {int b_update_mode; scalar_t__ b_mode_enabled; } ;
struct TYPE_10__ {int b_update_mode; scalar_t__ b_mode_enabled; } ;
struct qed_tunnel_info {int b_update_rx_cls; int b_update_tx_cls; TYPE_4__ ip_gre; TYPE_3__ l2_gre; TYPE_2__ ip_geneve; TYPE_1__ l2_geneve; TYPE_5__ vxlan; } ;



void qed_vf_set_vf_start_tunn_update_param(struct qed_tunnel_info *p_tun)
{
 if (p_tun->vxlan.b_mode_enabled)
  p_tun->vxlan.b_update_mode = 1;
 if (p_tun->l2_geneve.b_mode_enabled)
  p_tun->l2_geneve.b_update_mode = 1;
 if (p_tun->ip_geneve.b_mode_enabled)
  p_tun->ip_geneve.b_update_mode = 1;
 if (p_tun->l2_gre.b_mode_enabled)
  p_tun->l2_gre.b_update_mode = 1;
 if (p_tun->ip_gre.b_mode_enabled)
  p_tun->ip_gre.b_update_mode = 1;

 p_tun->b_update_rx_cls = 1;
 p_tun->b_update_tx_cls = 1;
}
