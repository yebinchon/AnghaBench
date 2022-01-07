
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_davinci_host {int dummy; } ;
struct mmc_data {int dummy; } ;


 int mmc_davinci_reset_ctrl (struct mmc_davinci_host*,int) ;

__attribute__((used)) static void
davinci_abort_data(struct mmc_davinci_host *host, struct mmc_data *data)
{
 mmc_davinci_reset_ctrl(host, 1);
 mmc_davinci_reset_ctrl(host, 0);
}
