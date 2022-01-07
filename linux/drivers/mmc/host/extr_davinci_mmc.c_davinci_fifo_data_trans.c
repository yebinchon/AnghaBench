
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mmc_davinci_host {unsigned int buffer_bytes_left; unsigned int bytes_left; scalar_t__ data_dir; int * buffer; scalar_t__ base; TYPE_1__* data; int sg; } ;
struct TYPE_2__ {int sg; } ;


 scalar_t__ DAVINCI_MMCDRR ;
 scalar_t__ DAVINCI_MMCDXR ;
 scalar_t__ DAVINCI_MMC_DATADIR_WRITE ;
 int ioread8_rep (scalar_t__,int *,unsigned int) ;
 int iowrite8_rep (scalar_t__,int *,unsigned int) ;
 int mmc_davinci_sg_to_buf (struct mmc_davinci_host*) ;
 int readl (scalar_t__) ;
 int sg_next (int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void davinci_fifo_data_trans(struct mmc_davinci_host *host,
     unsigned int n)
{
 u8 *p;
 unsigned int i;

 if (host->buffer_bytes_left == 0) {
  host->sg = sg_next(host->data->sg);
  mmc_davinci_sg_to_buf(host);
 }

 p = host->buffer;
 if (n > host->buffer_bytes_left)
  n = host->buffer_bytes_left;
 host->buffer_bytes_left -= n;
 host->bytes_left -= n;





 if (host->data_dir == DAVINCI_MMC_DATADIR_WRITE) {
  for (i = 0; i < (n >> 2); i++) {
   writel(*((u32 *)p), host->base + DAVINCI_MMCDXR);
   p = p + 4;
  }
  if (n & 3) {
   iowrite8_rep(host->base + DAVINCI_MMCDXR, p, (n & 3));
   p = p + (n & 3);
  }
 } else {
  for (i = 0; i < (n >> 2); i++) {
   *((u32 *)p) = readl(host->base + DAVINCI_MMCDRR);
   p = p + 4;
  }
  if (n & 3) {
   ioread8_rep(host->base + DAVINCI_MMCDRR, p, (n & 3));
   p = p + (n & 3);
  }
 }
 host->buffer = p;
}
