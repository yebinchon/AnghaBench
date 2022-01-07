
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tifm_sd {unsigned long clk_freq; unsigned long clk_div; struct tifm_dev* dev; } ;
struct tifm_dev {scalar_t__ addr; } ;
struct mmc_data {unsigned int timeout_clks; unsigned long timeout_ns; } ;


 scalar_t__ SOCK_MMCSD_DATA_TO ;
 scalar_t__ SOCK_MMCSD_SDIO_MODE_CONFIG ;
 unsigned int TIFM_MMCSD_DPE ;
 scalar_t__ fixed_timeout ;
 unsigned int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void tifm_sd_set_data_timeout(struct tifm_sd *host,
         struct mmc_data *data)
{
 struct tifm_dev *sock = host->dev;
 unsigned int data_timeout = data->timeout_clks;

 if (fixed_timeout)
  return;

 data_timeout += data->timeout_ns /
   ((1000000000UL / host->clk_freq) * host->clk_div);

 if (data_timeout < 0xffff) {
  writel(data_timeout, sock->addr + SOCK_MMCSD_DATA_TO);
  writel((~TIFM_MMCSD_DPE)
         & readl(sock->addr + SOCK_MMCSD_SDIO_MODE_CONFIG),
         sock->addr + SOCK_MMCSD_SDIO_MODE_CONFIG);
 } else {
  data_timeout = (data_timeout >> 10) + 1;
  if (data_timeout > 0xffff)
   data_timeout = 0;
  writel(data_timeout, sock->addr + SOCK_MMCSD_DATA_TO);
  writel(TIFM_MMCSD_DPE
         | readl(sock->addr + SOCK_MMCSD_SDIO_MODE_CONFIG),
         sock->addr + SOCK_MMCSD_SDIO_MODE_CONFIG);
 }
}
