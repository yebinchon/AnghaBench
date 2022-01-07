
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct p54s_priv {int dummy; } ;


 int p54spi_read32 (struct p54s_priv*,int ) ;

__attribute__((used)) static int p54spi_wait_bit(struct p54s_priv *priv, u16 reg, u32 bits)
{
 int i;

 for (i = 0; i < 2000; i++) {
  u32 buffer = p54spi_read32(priv, reg);
  if ((buffer & bits) == bits)
   return 1;
 }
 return 0;
}
