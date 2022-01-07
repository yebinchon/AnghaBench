
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scatterlist {int length; } ;
struct mmc_omap_host {int sg_idx; int total_bytes_left; int buffer_bytes_left; int buffer; TYPE_1__* data; } ;
struct TYPE_2__ {struct scatterlist* sg; } ;


 int sg_virt (struct scatterlist*) ;

__attribute__((used)) static void
mmc_omap_sg_to_buf(struct mmc_omap_host *host)
{
 struct scatterlist *sg;

 sg = host->data->sg + host->sg_idx;
 host->buffer_bytes_left = sg->length;
 host->buffer = sg_virt(sg);
 if (host->buffer_bytes_left > host->total_bytes_left)
  host->buffer_bytes_left = host->total_bytes_left;
}
