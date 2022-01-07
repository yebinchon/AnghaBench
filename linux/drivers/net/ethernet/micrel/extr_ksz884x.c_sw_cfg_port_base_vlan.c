
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct ksz_hw {TYPE_2__* ksz_switch; scalar_t__ io; } ;
struct TYPE_4__ {TYPE_1__* port_cfg; } ;
struct TYPE_3__ {int member; } ;


 scalar_t__ KS8842_PORT_CTRL_2_OFFSET ;
 int PORT_CTRL_ADDR (int,scalar_t__) ;
 int PORT_MASK ;
 int PORT_VLAN_MEMBERSHIP ;
 int readb (scalar_t__) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static void sw_cfg_port_base_vlan(struct ksz_hw *hw, int port, u8 member)
{
 u32 addr;
 u8 data;

 PORT_CTRL_ADDR(port, addr);
 addr += KS8842_PORT_CTRL_2_OFFSET;

 data = readb(hw->io + addr);
 data &= ~PORT_VLAN_MEMBERSHIP;
 data |= (member & PORT_MASK);
 writeb(data, hw->io + addr);

 hw->ksz_switch->port_cfg[port].member = member;
}
