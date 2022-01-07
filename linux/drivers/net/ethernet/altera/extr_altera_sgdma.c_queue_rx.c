
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tse_buffer {int lh; } ;
struct altera_tse_private {int rxlisthd; } ;


 int list_add_tail (int *,int *) ;

__attribute__((used)) static void
queue_rx(struct altera_tse_private *priv, struct tse_buffer *buffer)
{
 list_add_tail(&buffer->lh, &priv->rxlisthd);
}
