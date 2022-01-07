
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usdhi6_host {TYPE_1__* sg; int offset; struct mmc_request* mrq; } ;
struct mmc_request {struct mmc_data* data; } ;
struct mmc_data {TYPE_1__* sg; int blocks; } ;
struct TYPE_2__ {int offset; } ;


 int USDHI6_SD_SECCNT ;
 int usdhi6_write (struct usdhi6_host*,int ,int ) ;

__attribute__((used)) static void usdhi6_sg_prep(struct usdhi6_host *host)
{
 struct mmc_request *mrq = host->mrq;
 struct mmc_data *data = mrq->data;

 usdhi6_write(host, USDHI6_SD_SECCNT, data->blocks);

 host->sg = data->sg;

 host->offset = host->sg->offset;
}
