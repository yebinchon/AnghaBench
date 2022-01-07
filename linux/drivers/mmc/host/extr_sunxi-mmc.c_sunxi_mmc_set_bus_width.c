
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_mmc_host {int dummy; } ;





 int REG_WIDTH ;
 int SDXC_WIDTH1 ;
 int SDXC_WIDTH4 ;
 int SDXC_WIDTH8 ;
 int mmc_writel (struct sunxi_mmc_host*,int ,int ) ;

__attribute__((used)) static void sunxi_mmc_set_bus_width(struct sunxi_mmc_host *host,
       unsigned char width)
{
 switch (width) {
 case 130:
  mmc_writel(host, REG_WIDTH, SDXC_WIDTH1);
  break;
 case 129:
  mmc_writel(host, REG_WIDTH, SDXC_WIDTH4);
  break;
 case 128:
  mmc_writel(host, REG_WIDTH, SDXC_WIDTH8);
  break;
 }
}
