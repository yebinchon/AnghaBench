
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pasemi_mac {int dma_if; TYPE_1__* dma_pdev; } ;
struct TYPE_2__ {int dev; } ;


 unsigned int MAX_RETRIES ;
 int PAS_DMA_RXINT_RCMDSTA (int ) ;
 unsigned int PAS_DMA_RXINT_RCMDSTA_ACT ;
 int PAS_DMA_RXINT_RCMDSTA_ST ;
 int cond_resched () ;
 int dev_err (int *,char*,unsigned int) ;
 unsigned int read_dma_reg (int ) ;
 int write_dma_reg (int ,int ) ;

__attribute__((used)) static void pasemi_mac_pause_rxint(struct pasemi_mac *mac)
{
 unsigned int sta, retries;

 write_dma_reg(PAS_DMA_RXINT_RCMDSTA(mac->dma_if),
        PAS_DMA_RXINT_RCMDSTA_ST);
 for (retries = 0; retries < MAX_RETRIES; retries++) {
  sta = read_dma_reg(PAS_DMA_RXINT_RCMDSTA(mac->dma_if));
  if (!(sta & PAS_DMA_RXINT_RCMDSTA_ACT))
   break;
  cond_resched();
 }

 if (sta & PAS_DMA_RXINT_RCMDSTA_ACT)
  dev_err(&mac->dma_pdev->dev,
   "Failed to stop rx interface, rcmdsta %08x\n", sta);
 write_dma_reg(PAS_DMA_RXINT_RCMDSTA(mac->dma_if), 0);
}
