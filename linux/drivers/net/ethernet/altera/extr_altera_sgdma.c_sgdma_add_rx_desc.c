
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tse_buffer {int dummy; } ;
struct altera_tse_private {int dummy; } ;


 int queue_rx (struct altera_tse_private*,struct tse_buffer*) ;

void sgdma_add_rx_desc(struct altera_tse_private *priv,
         struct tse_buffer *rxbuffer)
{
 queue_rx(priv, rxbuffer);
}
