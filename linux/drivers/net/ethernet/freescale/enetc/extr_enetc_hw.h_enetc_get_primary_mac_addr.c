
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct enetc_hw {scalar_t__ reg; } ;


 scalar_t__ ENETC_SIPMAR0 ;
 scalar_t__ ENETC_SIPMAR1 ;
 int __raw_readl (scalar_t__) ;
 int __raw_readw (scalar_t__) ;

__attribute__((used)) static inline void enetc_get_primary_mac_addr(struct enetc_hw *hw, u8 *addr)
{
 *(u32 *)addr = __raw_readl(hw->reg + ENETC_SIPMAR0);
 *(u16 *)(addr + 4) = __raw_readw(hw->reg + ENETC_SIPMAR1);
}
