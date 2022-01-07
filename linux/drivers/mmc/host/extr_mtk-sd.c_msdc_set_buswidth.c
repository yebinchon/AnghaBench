
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct msdc_host {int dev; scalar_t__ base; } ;





 int MSDC_BUS_1BITS ;
 int MSDC_BUS_4BITS ;
 int MSDC_BUS_8BITS ;
 scalar_t__ SDC_CFG ;
 int SDC_CFG_BUSWIDTH ;
 int dev_dbg (int ,char*,int) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void msdc_set_buswidth(struct msdc_host *host, u32 width)
{
 u32 val = readl(host->base + SDC_CFG);

 val &= ~SDC_CFG_BUSWIDTH;

 switch (width) {
 default:
 case 130:
  val |= (MSDC_BUS_1BITS << 16);
  break;
 case 129:
  val |= (MSDC_BUS_4BITS << 16);
  break;
 case 128:
  val |= (MSDC_BUS_8BITS << 16);
  break;
 }

 writel(val, host->base + SDC_CFG);
 dev_dbg(host->dev, "Bus Width = %d", width);
}
