
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ipw_priv {int dummy; } ;


 int IPW_DEBUG_IO (char*,int,int ) ;
 int IPW_INDIRECT_ADDR ;
 int IPW_INDIRECT_ADDR_MASK ;
 int IPW_INDIRECT_DATA ;
 int _ipw_write16 (struct ipw_priv*,int,int ) ;
 int _ipw_write32 (struct ipw_priv*,int ,int) ;

__attribute__((used)) static void _ipw_write_reg16(struct ipw_priv *priv, u32 reg, u16 value)
{
 u32 aligned_addr = reg & IPW_INDIRECT_ADDR_MASK;
 u32 dif_len = (reg - aligned_addr) & (~0x1ul);

 IPW_DEBUG_IO(" reg = 0x%8X : value = 0x%8X\n", reg, value);
 _ipw_write32(priv, IPW_INDIRECT_ADDR, aligned_addr);
 _ipw_write16(priv, IPW_INDIRECT_DATA + dif_len, value);
}
