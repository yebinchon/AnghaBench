
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct enetc_hw {scalar_t__ port; } ;


 scalar_t__ ENETC_PSIPMAR0 (int) ;
 scalar_t__ ENETC_PSIPMAR1 (int) ;
 int __raw_readl (scalar_t__) ;
 int __raw_readw (scalar_t__) ;

__attribute__((used)) static void enetc_pf_get_primary_mac_addr(struct enetc_hw *hw, int si, u8 *addr)
{
 u32 upper = __raw_readl(hw->port + ENETC_PSIPMAR0(si));
 u16 lower = __raw_readw(hw->port + ENETC_PSIPMAR1(si));

 *(u32 *)addr = upper;
 *(u16 *)(addr + 4) = lower;
}
