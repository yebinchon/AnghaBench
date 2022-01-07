
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msdc_host {int dummy; } ;
struct mmc_request {struct mmc_data* data; } ;
struct mmc_host {int dummy; } ;
struct mmc_data {int host_cookie; } ;


 int MSDC_ASYNC_FLAG ;
 struct msdc_host* mmc_priv (struct mmc_host*) ;
 int msdc_unprepare_data (struct msdc_host*,struct mmc_request*) ;

__attribute__((used)) static void msdc_post_req(struct mmc_host *mmc, struct mmc_request *mrq,
  int err)
{
 struct msdc_host *host = mmc_priv(mmc);
 struct mmc_data *data;

 data = mrq->data;
 if (!data)
  return;
 if (data->host_cookie) {
  data->host_cookie &= ~MSDC_ASYNC_FLAG;
  msdc_unprepare_data(host, mrq);
 }
}
