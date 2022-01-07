
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wbsd_host {int dma_buffer; } ;
struct mmc_data {int sg_len; TYPE_1__* sg; } ;
struct TYPE_2__ {scalar_t__ length; } ;


 int sg_copy_to_buffer (TYPE_1__*,int,int ,size_t) ;

__attribute__((used)) static inline void wbsd_sg_to_dma(struct wbsd_host *host, struct mmc_data *data)
{
 size_t len = 0;
 int i;

 for (i = 0; i < data->sg_len; i++)
  len += data->sg[i].length;
 sg_copy_to_buffer(data->sg, data->sg_len, host->dma_buffer, len);
}
