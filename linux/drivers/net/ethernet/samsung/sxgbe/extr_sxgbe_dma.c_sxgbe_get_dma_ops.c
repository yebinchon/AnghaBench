
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sxgbe_dma_ops {int dummy; } ;


 struct sxgbe_dma_ops const sxgbe_dma_ops ;

const struct sxgbe_dma_ops *sxgbe_get_dma_ops(void)
{
 return &sxgbe_dma_ops;
}
