
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
 int __raw_writel (int ,scalar_t__) ;
 int __raw_writew (int ,scalar_t__) ;

__attribute__((used)) static void enetc_pf_set_primary_mac_addr(struct enetc_hw *hw, int si,
       const u8 *addr)
{
 u32 upper = *(const u32 *)addr;
 u16 lower = *(const u16 *)(addr + 4);

 __raw_writel(upper, hw->port + ENETC_PSIPMAR0(si));
 __raw_writew(lower, hw->port + ENETC_PSIPMAR1(si));
}
