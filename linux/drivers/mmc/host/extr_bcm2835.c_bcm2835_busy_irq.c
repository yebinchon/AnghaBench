
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm2835_host {int use_busy; int cmd; } ;


 scalar_t__ WARN_ON (int) ;
 int bcm2835_dumpregs (struct bcm2835_host*) ;
 int bcm2835_finish_command (struct bcm2835_host*) ;

__attribute__((used)) static void bcm2835_busy_irq(struct bcm2835_host *host)
{
 if (WARN_ON(!host->cmd)) {
  bcm2835_dumpregs(host);
  return;
 }

 if (WARN_ON(!host->use_busy)) {
  bcm2835_dumpregs(host);
  return;
 }
 host->use_busy = 0;

 bcm2835_finish_command(host);
}
