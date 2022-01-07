
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_davinci_host {scalar_t__ buffer_bytes_left; scalar_t__ bytes_left; int sg; int buffer; } ;


 scalar_t__ sg_dma_len (int ) ;
 int sg_virt (int ) ;

__attribute__((used)) static void mmc_davinci_sg_to_buf(struct mmc_davinci_host *host)
{
 host->buffer_bytes_left = sg_dma_len(host->sg);
 host->buffer = sg_virt(host->sg);
 if (host->buffer_bytes_left > host->bytes_left)
  host->buffer_bytes_left = host->bytes_left;
}
