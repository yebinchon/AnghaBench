
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dw_mci {TYPE_1__* dms; } ;
struct TYPE_2__ {int ch; } ;


 int dmaengine_terminate_async (int ) ;

__attribute__((used)) static void dw_mci_edmac_stop_dma(struct dw_mci *host)
{
 dmaengine_terminate_async(host->dms->ch);
}
