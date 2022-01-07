
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mmci_host {TYPE_1__* data; } ;
struct TYPE_2__ {int blksz; } ;


 int MCI_DPSM_ENABLE ;

__attribute__((used)) static u32 qcom_get_dctrl_cfg(struct mmci_host *host)
{
 return MCI_DPSM_ENABLE | (host->data->blksz << 4);
}
