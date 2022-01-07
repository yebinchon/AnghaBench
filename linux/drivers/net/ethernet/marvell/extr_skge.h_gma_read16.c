
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct skge_hw {int dummy; } ;


 int SK_GMAC_REG (int,int) ;
 int skge_read16 (struct skge_hw const*,int ) ;

__attribute__((used)) static inline u16 gma_read16(const struct skge_hw *hw, int port, int reg)
{
 return skge_read16(hw, SK_GMAC_REG(port,reg));
}
