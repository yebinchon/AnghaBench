
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct alcor_sdmmc_host {int * cmd; int data; int dev; } ;


 int AU6601_INT_CMD_END ;
 int alcor_request_complete (struct alcor_sdmmc_host*,int) ;
 int alcor_trigger_data_transfer (struct alcor_sdmmc_host*) ;
 int dev_dbg (int ,char*,int) ;

__attribute__((used)) static void alcor_cmd_irq_thread(struct alcor_sdmmc_host *host, u32 intmask)
{
 intmask &= AU6601_INT_CMD_END;

 if (!intmask)
  return;

 if (!host->cmd && intmask & AU6601_INT_CMD_END) {
  dev_dbg(host->dev, "Got command interrupt 0x%08x even though no command operation was in progress.\n",
   intmask);
 }


 if (!host->data)
  alcor_request_complete(host, 1);
 else
  alcor_trigger_data_transfer(host);
 host->cmd = ((void*)0);
}
