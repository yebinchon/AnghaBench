
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdricoh_host {int dev; } ;


 int EIO ;
 int R21C_STATUS ;
 int R224_MODE ;
 int R228_POWER ;
 int R2E0_INIT ;
 int R2F0_RESET ;
 int dev_dbg (int ,char*) ;
 int sdricoh_readl (struct sdricoh_host*,int ) ;
 int sdricoh_writel (struct sdricoh_host*,int ,int) ;

__attribute__((used)) static int sdricoh_reset(struct sdricoh_host *host)
{
 dev_dbg(host->dev, "reset\n");
 sdricoh_writel(host, R2F0_RESET, 0x10001);
 sdricoh_writel(host, R2E0_INIT, 0x10000);
 if (sdricoh_readl(host, R2E0_INIT) != 0x10000)
  return -EIO;
 sdricoh_writel(host, R2E0_INIT, 0x10007);

 sdricoh_writel(host, R224_MODE, 0x2000000);
 sdricoh_writel(host, R228_POWER, 0xe0);



 sdricoh_writel(host, R21C_STATUS, 0x18);

 return 0;
}
