
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au1xmmc_host {int dummy; } ;


 int AU1XMMC_INTERRUPTS ;
 int HOST_BLKSIZE (struct au1xmmc_host*) ;
 int HOST_CONFIG (struct au1xmmc_host*) ;
 int HOST_CONFIG2 (struct au1xmmc_host*) ;
 int HOST_ENABLE (struct au1xmmc_host*) ;
 int HOST_STATUS (struct au1xmmc_host*) ;
 int HOST_TIMEOUT (struct au1xmmc_host*) ;
 int SD_CONFIG2_EN ;
 int SD_CONFIG2_FF ;
 int SD_ENABLE_CE ;
 int SD_ENABLE_R ;
 int __raw_writel (int,int ) ;
 int mdelay (int) ;
 int wmb () ;

__attribute__((used)) static void au1xmmc_reset_controller(struct au1xmmc_host *host)
{

 __raw_writel(SD_ENABLE_CE, HOST_ENABLE(host));
 wmb();
 mdelay(1);

 __raw_writel(SD_ENABLE_R | SD_ENABLE_CE, HOST_ENABLE(host));
 wmb();
 mdelay(5);

 __raw_writel(~0, HOST_STATUS(host));
 wmb();

 __raw_writel(0, HOST_BLKSIZE(host));
 __raw_writel(0x001fffff, HOST_TIMEOUT(host));
 wmb();

 __raw_writel(SD_CONFIG2_EN, HOST_CONFIG2(host));
 wmb();

 __raw_writel(SD_CONFIG2_EN | SD_CONFIG2_FF, HOST_CONFIG2(host));
 wmb();
 mdelay(1);

 __raw_writel(SD_CONFIG2_EN, HOST_CONFIG2(host));
 wmb();


 __raw_writel(AU1XMMC_INTERRUPTS, HOST_CONFIG(host));
 wmb();
}
