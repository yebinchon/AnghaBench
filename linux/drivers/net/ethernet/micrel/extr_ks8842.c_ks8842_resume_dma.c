
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks8842_adapter {scalar_t__ hw_addr; } ;


 scalar_t__ REQ_TIMB_DMA_RESUME ;
 int iowrite32 (int,scalar_t__) ;

__attribute__((used)) static inline void ks8842_resume_dma(struct ks8842_adapter *adapter)
{
 iowrite32(1, adapter->hw_addr + REQ_TIMB_DMA_RESUME);
}
