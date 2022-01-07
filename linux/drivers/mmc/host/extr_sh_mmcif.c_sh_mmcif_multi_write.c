
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_mmcif_host {int blocksize; int pio_ptr; scalar_t__ sg_blkidx; scalar_t__ sg_idx; int wait_for; int addr; } ;
struct mmc_request {struct mmc_data* data; } ;
struct mmc_data {TYPE_1__* sg; int sg_len; } ;
struct TYPE_2__ {int length; } ;


 int BLOCK_SIZE_MASK ;
 int MASK_MBUFWEN ;
 int MMCIF_CE_BLOCK_SET ;
 int MMCIF_CE_INT_MASK ;
 int MMCIF_WAIT_FOR_MWRITE ;
 int sg_virt (TYPE_1__*) ;
 int sh_mmcif_bitset (struct sh_mmcif_host*,int ,int ) ;
 int sh_mmcif_readl (int ,int ) ;

__attribute__((used)) static void sh_mmcif_multi_write(struct sh_mmcif_host *host,
    struct mmc_request *mrq)
{
 struct mmc_data *data = mrq->data;

 if (!data->sg_len || !data->sg->length)
  return;

 host->blocksize = sh_mmcif_readl(host->addr, MMCIF_CE_BLOCK_SET) &
  BLOCK_SIZE_MASK;

 host->wait_for = MMCIF_WAIT_FOR_MWRITE;
 host->sg_idx = 0;
 host->sg_blkidx = 0;
 host->pio_ptr = sg_virt(data->sg);

 sh_mmcif_bitset(host, MMCIF_CE_INT_MASK, MASK_MBUFWEN);
}
