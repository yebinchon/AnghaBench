
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct w5300_priv {int dummy; } ;


 int W5300_S0_TX_FIFO ;
 int W5300_S0_TX_WRSR ;
 int w5300_write (struct w5300_priv*,int ,int) ;
 int w5300_write32 (struct w5300_priv*,int ,int) ;

__attribute__((used)) static void w5300_write_frame(struct w5300_priv *priv, u8 *buf, int len)
{
 u16 fifo;
 int i;

 for (i = 0; i < len; i += 2) {
  fifo = *buf++ << 8;
  fifo |= *buf++;
  w5300_write(priv, W5300_S0_TX_FIFO, fifo);
 }
 w5300_write32(priv, W5300_S0_TX_WRSR, len);
}
