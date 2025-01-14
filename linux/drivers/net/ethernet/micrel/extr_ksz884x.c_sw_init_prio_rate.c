
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ksz_switch {TYPE_1__* port_cfg; } ;
struct ksz_hw {struct ksz_switch* ksz_switch; } ;
struct TYPE_2__ {scalar_t__* tx_rate; scalar_t__* rx_rate; } ;


 int PRIO_QUEUES ;
 int TOTAL_PORT_NUM ;
 int sw_dis_prio_rate (struct ksz_hw*,int) ;

__attribute__((used)) static void sw_init_prio_rate(struct ksz_hw *hw)
{
 int port;
 int prio;
 struct ksz_switch *sw = hw->ksz_switch;

 for (port = 0; port < TOTAL_PORT_NUM; port++) {
  for (prio = 0; prio < PRIO_QUEUES; prio++) {
   sw->port_cfg[port].rx_rate[prio] =
   sw->port_cfg[port].tx_rate[prio] = 0;
  }
  sw_dis_prio_rate(hw, port);
 }
}
