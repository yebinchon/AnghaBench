
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tifm_sd {int clk_div; int clk_freq; struct tifm_dev* dev; } ;
struct tifm_dev {scalar_t__ addr; int dev; } ;


 int ENODEV ;
 scalar_t__ SOCK_MMCSD_BUFFER_CONFIG ;
 scalar_t__ SOCK_MMCSD_COMMAND ;
 scalar_t__ SOCK_MMCSD_COMMAND_TO ;
 scalar_t__ SOCK_MMCSD_CONFIG ;
 scalar_t__ SOCK_MMCSD_INT_ENABLE ;
 scalar_t__ SOCK_MMCSD_NUM_BLOCKS ;
 scalar_t__ SOCK_MMCSD_STATUS ;
 scalar_t__ SOCK_MMCSD_SYSTEM_CONTROL ;
 scalar_t__ SOCK_MMCSD_SYSTEM_STATUS ;
 unsigned int TIFM_MMCSD_BRS ;
 unsigned int TIFM_MMCSD_CERR ;
 unsigned int TIFM_MMCSD_EOC ;
 unsigned int TIFM_MMCSD_ERRMASK ;
 unsigned int TIFM_MMCSD_INAB ;
 unsigned int TIFM_MMCSD_POWER ;
 unsigned int TIFM_MMCSD_RESET ;
 unsigned int TIFM_MMCSD_RXDE ;
 int dev_name (int *) ;
 int msleep (int) ;
 int pr_err (char*,int ) ;
 int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int tifm_sd_initialize_host(struct tifm_sd *host)
{
 int rc;
 unsigned int host_status = 0;
 struct tifm_dev *sock = host->dev;

 writel(0, sock->addr + SOCK_MMCSD_INT_ENABLE);
 host->clk_div = 61;
 host->clk_freq = 20000000;
 writel(TIFM_MMCSD_RESET, sock->addr + SOCK_MMCSD_SYSTEM_CONTROL);
 writel(host->clk_div | TIFM_MMCSD_POWER,
        sock->addr + SOCK_MMCSD_CONFIG);


 for (rc = 32; rc <= 256; rc <<= 1) {
  if (1 & readl(sock->addr + SOCK_MMCSD_SYSTEM_STATUS)) {
   rc = 0;
   break;
  }
  msleep(rc);
 }

 if (rc) {
  pr_err("%s : controller failed to reset\n",
         dev_name(&sock->dev));
  return -ENODEV;
 }

 writel(0, sock->addr + SOCK_MMCSD_NUM_BLOCKS);
 writel(host->clk_div | TIFM_MMCSD_POWER,
        sock->addr + SOCK_MMCSD_CONFIG);
 writel(TIFM_MMCSD_RXDE, sock->addr + SOCK_MMCSD_BUFFER_CONFIG);


 writel(64, sock->addr + SOCK_MMCSD_COMMAND_TO);
 writel(TIFM_MMCSD_INAB, sock->addr + SOCK_MMCSD_COMMAND);

 for (rc = 16; rc <= 64; rc <<= 1) {
  host_status = readl(sock->addr + SOCK_MMCSD_STATUS);
  writel(host_status, sock->addr + SOCK_MMCSD_STATUS);
  if (!(host_status & TIFM_MMCSD_ERRMASK)
      && (host_status & TIFM_MMCSD_EOC)) {
   rc = 0;
   break;
  }
  msleep(rc);
 }

 if (rc) {
  pr_err("%s : card not ready - probe failed on initialization\n",
         dev_name(&sock->dev));
  return -ENODEV;
 }

 writel(TIFM_MMCSD_CERR | TIFM_MMCSD_BRS | TIFM_MMCSD_EOC
        | TIFM_MMCSD_ERRMASK,
        sock->addr + SOCK_MMCSD_INT_ENABLE);

 return 0;
}
