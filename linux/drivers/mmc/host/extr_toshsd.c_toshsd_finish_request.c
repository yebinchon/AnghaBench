
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct toshsd_host {int mmc; int * data; int * cmd; struct mmc_request* mrq; } ;
struct mmc_request {int dummy; } ;


 int mmc_request_done (int ,struct mmc_request*) ;
 int toshsd_set_led (struct toshsd_host*,int ) ;

__attribute__((used)) static void toshsd_finish_request(struct toshsd_host *host)
{
 struct mmc_request *mrq = host->mrq;


 host->mrq = ((void*)0);
 host->cmd = ((void*)0);
 host->data = ((void*)0);

 toshsd_set_led(host, 0);
 mmc_request_done(host->mmc, mrq);
}
