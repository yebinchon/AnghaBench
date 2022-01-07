
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w5100_priv {int dummy; } ;


 int W5500_Sn_RXMEM_SIZE (int) ;
 int W5500_Sn_TXMEM_SIZE (int) ;
 int w5100_write (struct w5100_priv*,int ,int) ;

__attribute__((used)) static void w5500_memory_configure(struct w5100_priv *priv)
{
 int i;




 w5100_write(priv, W5500_Sn_RXMEM_SIZE(0), 0x10);
 w5100_write(priv, W5500_Sn_TXMEM_SIZE(0), 0x10);

 for (i = 1; i < 8; i++) {
  w5100_write(priv, W5500_Sn_RXMEM_SIZE(i), 0);
  w5100_write(priv, W5500_Sn_TXMEM_SIZE(i), 0);
 }
}
