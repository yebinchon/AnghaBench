
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ksz_hw {int dummy; } ;


 int KS8841_WOL_FRAME0_ENABLE ;
 int KS8841_WOL_FRAME1_ENABLE ;
 int KS8841_WOL_FRAME2_ENABLE ;
 int KS8841_WOL_FRAME3_ENABLE ;
 int KS8841_WOL_MAGIC_ENABLE ;
 int WAKE_ARP ;
 int WAKE_BCAST ;
 int WAKE_MAGIC ;
 int WAKE_MCAST ;
 int WAKE_UCAST ;
 int hw_add_wol_arp (struct ksz_hw*,int const*) ;
 int hw_add_wol_mcast (struct ksz_hw*) ;
 int hw_add_wol_ucast (struct ksz_hw*) ;
 int hw_cfg_wol (struct ksz_hw*,int ,int) ;

__attribute__((used)) static void hw_enable_wol(struct ksz_hw *hw, u32 wol_enable, const u8 *net_addr)
{
 hw_cfg_wol(hw, KS8841_WOL_MAGIC_ENABLE, (wol_enable & WAKE_MAGIC));
 hw_cfg_wol(hw, KS8841_WOL_FRAME0_ENABLE, (wol_enable & WAKE_UCAST));
 hw_add_wol_ucast(hw);
 hw_cfg_wol(hw, KS8841_WOL_FRAME1_ENABLE, (wol_enable & WAKE_MCAST));
 hw_add_wol_mcast(hw);
 hw_cfg_wol(hw, KS8841_WOL_FRAME2_ENABLE, (wol_enable & WAKE_BCAST));
 hw_cfg_wol(hw, KS8841_WOL_FRAME3_ENABLE, (wol_enable & WAKE_ARP));
 hw_add_wol_arp(hw, net_addr);
}
