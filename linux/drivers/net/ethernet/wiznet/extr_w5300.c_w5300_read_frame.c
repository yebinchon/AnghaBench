
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct w5300_priv {int dummy; } ;


 int W5300_S0_RX_FIFO ;
 int w5300_read (struct w5300_priv*,int ) ;

__attribute__((used)) static void w5300_read_frame(struct w5300_priv *priv, u8 *buf, int len)
{
 u16 fifo;
 int i;

 for (i = 0; i < len; i += 2) {
  fifo = w5300_read(priv, W5300_S0_RX_FIFO);
  *buf++ = fifo >> 8;
  *buf++ = fifo;
 }
 fifo = w5300_read(priv, W5300_S0_RX_FIFO);
 fifo = w5300_read(priv, W5300_S0_RX_FIFO);
}
