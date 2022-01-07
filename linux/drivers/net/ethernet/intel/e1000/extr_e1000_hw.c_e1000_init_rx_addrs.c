
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int mac_addr; } ;


 int E1000_RAR_ENTRIES ;
 int E1000_WRITE_FLUSH () ;
 int E1000_WRITE_REG_ARRAY (struct e1000_hw*,int ,int,int ) ;
 int RA ;
 int e1000_rar_set (struct e1000_hw*,int ,int ) ;
 int e_dbg (char*) ;

__attribute__((used)) static void e1000_init_rx_addrs(struct e1000_hw *hw)
{
 u32 i;
 u32 rar_num;


 e_dbg("Programming MAC Address into RAR[0]\n");

 e1000_rar_set(hw, hw->mac_addr, 0);

 rar_num = E1000_RAR_ENTRIES;




 e_dbg("Clearing RAR[1-14]\n");
 for (i = 1; i < rar_num; i++) {
  E1000_WRITE_REG_ARRAY(hw, RA, (i << 1), 0);
  E1000_WRITE_FLUSH();
  E1000_WRITE_REG_ARRAY(hw, RA, ((i << 1) + 1), 0);
  E1000_WRITE_FLUSH();
 }
}
