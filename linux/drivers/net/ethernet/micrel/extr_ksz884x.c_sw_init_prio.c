
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ksz_switch {int* p_802_1p; TYPE_1__* port_cfg; scalar_t__* diffserv; } ;
struct ksz_hw {struct ksz_switch* ksz_switch; } ;
struct TYPE_2__ {scalar_t__ port_prio; } ;


 int DIFFSERV_ENTRIES ;
 int TOTAL_PORT_NUM ;
 int sw_cfg_port_based (struct ksz_hw*,int,scalar_t__) ;
 int sw_cfg_replace_null_vid (struct ksz_hw*,int ) ;
 int sw_cfg_replace_vid (struct ksz_hw*,int,int ) ;
 int sw_dis_802_1p (struct ksz_hw*,int) ;
 int sw_dis_diffserv (struct ksz_hw*,int) ;
 int sw_dis_multi_queue (struct ksz_hw*,int) ;

__attribute__((used)) static void sw_init_prio(struct ksz_hw *hw)
{
 int port;
 int tos;
 struct ksz_switch *sw = hw->ksz_switch;





 sw->p_802_1p[0] = 0;
 sw->p_802_1p[1] = 0;
 sw->p_802_1p[2] = 1;
 sw->p_802_1p[3] = 1;
 sw->p_802_1p[4] = 2;
 sw->p_802_1p[5] = 2;
 sw->p_802_1p[6] = 3;
 sw->p_802_1p[7] = 3;





 for (tos = 0; tos < DIFFSERV_ENTRIES; tos++)
  sw->diffserv[tos] = 0;


 for (port = 0; port < TOTAL_PORT_NUM; port++) {
  sw_dis_multi_queue(hw, port);
  sw_dis_diffserv(hw, port);
  sw_dis_802_1p(hw, port);
  sw_cfg_replace_vid(hw, port, 0);

  sw->port_cfg[port].port_prio = 0;
  sw_cfg_port_based(hw, port, sw->port_cfg[port].port_prio);
 }
 sw_cfg_replace_null_vid(hw, 0);
}
