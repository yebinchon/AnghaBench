
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct moxart_host {scalar_t__ data_remain; scalar_t__ data_len; TYPE_1__* cur_sg; int num_sg; } ;
struct mmc_data {int sg_len; TYPE_1__* sg; } ;
struct TYPE_2__ {scalar_t__ length; } ;



__attribute__((used)) static inline void moxart_init_sg(struct moxart_host *host,
      struct mmc_data *data)
{
 host->cur_sg = data->sg;
 host->num_sg = data->sg_len;
 host->data_remain = host->cur_sg->length;

 if (host->data_remain > host->data_len)
  host->data_remain = host->data_len;
}
