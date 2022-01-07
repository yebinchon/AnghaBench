
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sh_mmcif_host {scalar_t__ sg_blkidx; scalar_t__ blocksize; scalar_t__ sg_idx; int * pio_ptr; TYPE_1__* mrq; } ;
struct mmc_data {scalar_t__ sg_len; TYPE_2__* sg; } ;
struct TYPE_4__ {scalar_t__ length; } ;
struct TYPE_3__ {struct mmc_data* data; } ;


 int BUG_ON (int) ;
 int * sg_virt (TYPE_2__*) ;

__attribute__((used)) static bool sh_mmcif_next_block(struct sh_mmcif_host *host, u32 *p)
{
 struct mmc_data *data = host->mrq->data;

 host->sg_blkidx += host->blocksize;


 BUG_ON(host->sg_blkidx > data->sg->length);

 if (host->sg_blkidx == data->sg->length) {
  host->sg_blkidx = 0;
  if (++host->sg_idx < data->sg_len)
   host->pio_ptr = sg_virt(++data->sg);
 } else {
  host->pio_ptr = p;
 }

 return host->sg_idx != data->sg_len;
}
