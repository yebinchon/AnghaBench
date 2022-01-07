
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmc_host {int dummy; } ;


 int MMC_ALL_SEND_CID ;
 scalar_t__ mmc_host_is_spi (struct mmc_host*) ;
 int mmc_send_cxd_native (struct mmc_host*,int ,int *,int ) ;
 int mmc_spi_send_cid (struct mmc_host*,int *) ;

int mmc_send_cid(struct mmc_host *host, u32 *cid)
{
 if (mmc_host_is_spi(host))
  return mmc_spi_send_cid(host, cid);

 return mmc_send_cxd_native(host, 0, cid, MMC_ALL_SEND_CID);
}
