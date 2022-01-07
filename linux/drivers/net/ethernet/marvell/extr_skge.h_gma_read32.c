
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct skge_hw {int dummy; } ;


 int SK_GMAC_REG (int,int) ;
 scalar_t__ skge_read16 (struct skge_hw const*,int ) ;

__attribute__((used)) static inline u32 gma_read32(const struct skge_hw *hw, int port, int reg)
{
 return (u32) skge_read16(hw, SK_GMAC_REG(port,reg))
  | ((u32)skge_read16(hw, SK_GMAC_REG(port,reg+4)) << 16);
}
