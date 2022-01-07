
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_request {TYPE_1__* data; } ;
struct cvm_mmc_host {int smi; } ;
struct TYPE_2__ {int sg_len; int sg; } ;


 int SG_MITER_ATOMIC ;
 int SG_MITER_TO_SG ;
 int sg_miter_start (int *,int ,int ,int) ;

__attribute__((used)) static void do_read_request(struct cvm_mmc_host *host, struct mmc_request *mrq)
{
 sg_miter_start(&host->smi, mrq->data->sg, mrq->data->sg_len,
         SG_MITER_ATOMIC | SG_MITER_TO_SG);
}
