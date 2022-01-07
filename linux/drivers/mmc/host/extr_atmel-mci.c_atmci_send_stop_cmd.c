
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_data {int stop; } ;
struct atmel_mci {int stop_cmdr; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int ATMCI_CMDRDY ;
 int ATMCI_IER ;
 int atmci_send_command (struct atmel_mci*,int ,int ) ;
 int atmci_writel (struct atmel_mci*,int ,int ) ;
 int dev_dbg (int *,char*) ;

__attribute__((used)) static void atmci_send_stop_cmd(struct atmel_mci *host, struct mmc_data *data)
{
 dev_dbg(&host->pdev->dev, "send stop command\n");
 atmci_send_command(host, data->stop, host->stop_cmdr);
 atmci_writel(host, ATMCI_IER, ATMCI_CMDRDY);
}
