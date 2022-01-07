
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bcm2835_host {scalar_t__ blocks; TYPE_1__* data; } ;
struct TYPE_2__ {scalar_t__ error; } ;


 int bcm2835_finish_data (struct bcm2835_host*) ;

__attribute__((used)) static void bcm2835_data_threaded_irq(struct bcm2835_host *host)
{
 if (!host->data)
  return;
 if ((host->blocks == 0) || host->data->error)
  bcm2835_finish_data(host);
}
