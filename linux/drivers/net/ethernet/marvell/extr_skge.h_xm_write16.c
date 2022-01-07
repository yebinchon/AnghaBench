
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct skge_hw {int dummy; } ;


 int SK_XMAC_REG (int,int) ;
 int skge_write16 (struct skge_hw const*,int ,int ) ;

__attribute__((used)) static inline void xm_write16(const struct skge_hw *hw, int port, int r, u16 v)
{
 skge_write16(hw, SK_XMAC_REG(port,r), v);
}
