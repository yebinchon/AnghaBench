
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_data {scalar_t__ error; } ;
struct bcm2835_host {int use_busy; TYPE_1__* mrq; int use_sbc; struct mmc_data* data; int data_complete; } ;
struct TYPE_2__ {scalar_t__ stop; } ;


 int WARN_ON (int) ;
 int bcm2835_finish_command (struct bcm2835_host*) ;
 int bcm2835_finish_request (struct bcm2835_host*) ;
 scalar_t__ bcm2835_send_command (struct bcm2835_host*,scalar_t__) ;
 int bcm2835_wait_transfer_complete (struct bcm2835_host*) ;

__attribute__((used)) static void bcm2835_transfer_complete(struct bcm2835_host *host)
{
 struct mmc_data *data;

 WARN_ON(!host->data_complete);

 data = host->data;
 host->data = ((void*)0);





 if (host->mrq->stop && (data->error || !host->use_sbc)) {
  if (bcm2835_send_command(host, host->mrq->stop)) {

   if (!host->use_busy)
    bcm2835_finish_command(host);
  }
 } else {
  bcm2835_wait_transfer_complete(host);
  bcm2835_finish_request(host);
 }
}
