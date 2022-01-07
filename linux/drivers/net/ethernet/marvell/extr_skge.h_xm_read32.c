
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct skge_hw {int dummy; } ;


 int SK_XMAC_REG (int,int) ;
 int skge_read16 (struct skge_hw const*,int ) ;

__attribute__((used)) static inline u32 xm_read32(const struct skge_hw *hw, int port, int reg)
{
 u32 v;
 v = skge_read16(hw, SK_XMAC_REG(port, reg));
 v |= (u32)skge_read16(hw, SK_XMAC_REG(port, reg+2)) << 16;
 return v;
}
