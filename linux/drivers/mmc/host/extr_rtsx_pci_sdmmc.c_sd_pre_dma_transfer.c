
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_pcr {int dummy; } ;
struct realtek_pci_sdmmc {scalar_t__ cookie; int cookie_sg_count; int sg_count; struct rtsx_pcr* pcr; } ;
struct mmc_data {int flags; scalar_t__ host_cookie; int sg_len; int sg; } ;


 int MMC_DATA_READ ;
 int dev_err (int ,char*,scalar_t__,scalar_t__) ;
 int rtsx_pci_dma_map_sg (struct rtsx_pcr*,int ,int ,int) ;
 int sdmmc_dev (struct realtek_pci_sdmmc*) ;

__attribute__((used)) static int sd_pre_dma_transfer(struct realtek_pci_sdmmc *host,
  struct mmc_data *data, bool pre)
{
 struct rtsx_pcr *pcr = host->pcr;
 int read = data->flags & MMC_DATA_READ;
 int count = 0;
 int using_cookie = 0;

 if (!pre && data->host_cookie && data->host_cookie != host->cookie) {
  dev_err(sdmmc_dev(host),
   "error: data->host_cookie = %d, host->cookie = %d\n",
   data->host_cookie, host->cookie);
  data->host_cookie = 0;
 }

 if (pre || data->host_cookie != host->cookie) {
  count = rtsx_pci_dma_map_sg(pcr, data->sg, data->sg_len, read);
 } else {
  count = host->cookie_sg_count;
  using_cookie = 1;
 }

 if (pre) {
  host->cookie_sg_count = count;
  if (++host->cookie < 0)
   host->cookie = 1;
  data->host_cookie = host->cookie;
 } else {
  host->sg_count = count;
 }

 return using_cookie;
}
