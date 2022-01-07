
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct altera_tse_private {int dummy; } ;


 int sgdma_async_read (struct altera_tse_private*) ;

void sgdma_start_rxdma(struct altera_tse_private *priv)
{
 sgdma_async_read(priv);
}
