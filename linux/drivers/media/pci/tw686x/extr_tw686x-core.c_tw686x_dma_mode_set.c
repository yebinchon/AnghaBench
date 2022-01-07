
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int EINVAL ;
 int TW686X_DMA_MODE_CONTIG ;
 int TW686X_DMA_MODE_MEMCPY ;
 int TW686X_DMA_MODE_SG ;
 int dma_mode ;
 int dma_mode_name (int ) ;
 int strcasecmp (char const*,int ) ;

__attribute__((used)) static int tw686x_dma_mode_set(const char *val, const struct kernel_param *kp)
{
 if (!strcasecmp(val, dma_mode_name(TW686X_DMA_MODE_MEMCPY)))
  dma_mode = TW686X_DMA_MODE_MEMCPY;
 else if (!strcasecmp(val, dma_mode_name(TW686X_DMA_MODE_CONTIG)))
  dma_mode = TW686X_DMA_MODE_CONTIG;
 else if (!strcasecmp(val, dma_mode_name(TW686X_DMA_MODE_SG)))
  dma_mode = TW686X_DMA_MODE_SG;
 else
  return -EINVAL;
 return 0;
}
