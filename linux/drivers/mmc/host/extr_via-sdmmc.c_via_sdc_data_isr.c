
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct via_crdr_mmc_host {TYPE_1__* data; } ;
struct TYPE_2__ {int error; } ;


 int BUG_ON (int) ;
 int EILSEQ ;
 int ETIMEDOUT ;
 int VIA_CRDR_SDSTS_DT ;
 int VIA_CRDR_SDSTS_RC ;
 int VIA_CRDR_SDSTS_WC ;
 int via_sdc_finish_data (struct via_crdr_mmc_host*) ;

__attribute__((used)) static void via_sdc_data_isr(struct via_crdr_mmc_host *host, u16 intmask)
{
 BUG_ON(intmask == 0);

 if (intmask & VIA_CRDR_SDSTS_DT)
  host->data->error = -ETIMEDOUT;
 else if (intmask & (VIA_CRDR_SDSTS_RC | VIA_CRDR_SDSTS_WC))
  host->data->error = -EILSEQ;

 via_sdc_finish_data(host);
}
