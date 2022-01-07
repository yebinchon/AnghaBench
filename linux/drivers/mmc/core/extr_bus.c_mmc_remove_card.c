
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mmc_host {int cqe_enabled; TYPE_1__* cqe_ops; } ;
struct TYPE_5__ {int of_node; } ;
struct mmc_card {TYPE_2__ dev; int rca; struct mmc_host* host; } ;
struct TYPE_4__ {int (* cqe_disable ) (struct mmc_host*) ;} ;


 int device_del (TYPE_2__*) ;
 scalar_t__ mmc_card_present (struct mmc_card*) ;
 scalar_t__ mmc_host_is_spi (struct mmc_host*) ;
 int mmc_hostname (struct mmc_host*) ;
 int mmc_remove_card_debugfs (struct mmc_card*) ;
 int of_node_put (int ) ;
 int pr_info (char*,int ,...) ;
 int put_device (TYPE_2__*) ;
 int stub1 (struct mmc_host*) ;

void mmc_remove_card(struct mmc_card *card)
{
 struct mmc_host *host = card->host;





 if (host->cqe_enabled) {
  host->cqe_ops->cqe_disable(host);
  host->cqe_enabled = 0;
 }

 if (mmc_card_present(card)) {
  if (mmc_host_is_spi(card->host)) {
   pr_info("%s: SPI card removed\n",
    mmc_hostname(card->host));
  } else {
   pr_info("%s: card %04x removed\n",
    mmc_hostname(card->host), card->rca);
  }
  device_del(&card->dev);
  of_node_put(card->dev.of_node);
 }

 put_device(&card->dev);
}
