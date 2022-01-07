
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_data {int dummy; } ;
struct mmc_command {int dummy; } ;
struct dw_mci {int stop_cmdr; struct mmc_command stop_abort; } ;


 int dw_mci_start_command (struct dw_mci*,struct mmc_command*,int ) ;

__attribute__((used)) static inline void send_stop_abort(struct dw_mci *host, struct mmc_data *data)
{
 struct mmc_command *stop = &host->stop_abort;

 dw_mci_start_command(host, stop, host->stop_cmdr);
}
