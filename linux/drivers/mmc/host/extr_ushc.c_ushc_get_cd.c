
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ushc_data {int last_status; } ;
struct mmc_host {int dummy; } ;


 int USHC_INT_STATUS_CARD_PRESENT ;
 struct ushc_data* mmc_priv (struct mmc_host*) ;

__attribute__((used)) static int ushc_get_cd(struct mmc_host *mmc)
{
 struct ushc_data *ushc = mmc_priv(mmc);

 return !!(ushc->last_status & USHC_INT_STATUS_CARD_PRESENT);
}
