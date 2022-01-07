
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usdhi6_host {int chan_tx; int chan_rx; TYPE_2__* mrq; } ;
struct TYPE_4__ {TYPE_1__* data; } ;
struct TYPE_3__ {int flags; } ;


 int MMC_DATA_READ ;
 int dma_async_issue_pending (int ) ;

__attribute__((used)) static void usdhi6_dma_kick(struct usdhi6_host *host)
{
 if (host->mrq->data->flags & MMC_DATA_READ)
  dma_async_issue_pending(host->chan_rx);
 else
  dma_async_issue_pending(host->chan_tx);
}
