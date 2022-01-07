
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_request {struct mmc_data* data; } ;
struct mmc_data {scalar_t__ host_cookie; } ;
struct jz4740_mmc_host {int mmc; struct mmc_request* req; } ;


 scalar_t__ COOKIE_MAPPED ;
 int jz4740_mmc_dma_unmap (struct jz4740_mmc_host*,struct mmc_data*) ;
 int mmc_request_done (int ,struct mmc_request*) ;

__attribute__((used)) static void jz4740_mmc_request_done(struct jz4740_mmc_host *host)
{
 struct mmc_request *req;
 struct mmc_data *data;

 req = host->req;
 data = req->data;
 host->req = ((void*)0);

 if (data && data->host_cookie == COOKIE_MAPPED)
  jz4740_mmc_dma_unmap(host, data);
 mmc_request_done(host->mmc, req);
}
