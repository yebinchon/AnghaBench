
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ksz_switch {TYPE_2__* port_cfg; TYPE_1__* vlan_table; } ;
struct ksz_hw {struct ksz_switch* ksz_switch; } ;
struct TYPE_4__ {int member; int vid; } ;
struct TYPE_3__ {int member; int fid; int vid; } ;


 int PORT_MASK ;
 int TOTAL_PORT_NUM ;
 int VLAN_TABLE_ENTRIES ;
 int port_get_def_vid (struct ksz_hw*,int,int *) ;
 int sw_r_vlan_table (struct ksz_hw*,int,int *,int *,int *) ;

__attribute__((used)) static void sw_init_vlan(struct ksz_hw *hw)
{
 int port;
 int entry;
 struct ksz_switch *sw = hw->ksz_switch;


 for (entry = 0; entry < VLAN_TABLE_ENTRIES; entry++) {
  sw_r_vlan_table(hw, entry,
   &sw->vlan_table[entry].vid,
   &sw->vlan_table[entry].fid,
   &sw->vlan_table[entry].member);
 }

 for (port = 0; port < TOTAL_PORT_NUM; port++) {
  port_get_def_vid(hw, port, &sw->port_cfg[port].vid);
  sw->port_cfg[port].member = PORT_MASK;
 }
}
