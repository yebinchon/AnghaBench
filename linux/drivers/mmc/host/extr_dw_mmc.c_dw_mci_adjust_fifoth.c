
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmc_data {unsigned int blksz; } ;
struct dw_mci {int data_shift; int fifo_depth; int use_dma; } ;


 int ARRAY_SIZE (int const*) ;
 int FIFOTH ;
 int SDMMC_SET_FIFOTH (int,int,int) ;
 int mci_writel (struct dw_mci*,int ,int) ;

__attribute__((used)) static void dw_mci_adjust_fifoth(struct dw_mci *host, struct mmc_data *data)
{
 unsigned int blksz = data->blksz;
 static const u32 mszs[] = {1, 4, 8, 16, 32, 64, 128, 256};
 u32 fifo_width = 1 << host->data_shift;
 u32 blksz_depth = blksz / fifo_width, fifoth_val;
 u32 msize = 0, rx_wmark = 1, tx_wmark, tx_wmark_invers;
 int idx = ARRAY_SIZE(mszs) - 1;


 if (!host->use_dma)
  return;

 tx_wmark = (host->fifo_depth) / 2;
 tx_wmark_invers = host->fifo_depth - tx_wmark;





 if (blksz % fifo_width)
  goto done;

 do {
  if (!((blksz_depth % mszs[idx]) ||
       (tx_wmark_invers % mszs[idx]))) {
   msize = idx;
   rx_wmark = mszs[idx] - 1;
   break;
  }
 } while (--idx > 0);




done:
 fifoth_val = SDMMC_SET_FIFOTH(msize, rx_wmark, tx_wmark);
 mci_writel(host, FIFOTH, fifoth_val);
}
