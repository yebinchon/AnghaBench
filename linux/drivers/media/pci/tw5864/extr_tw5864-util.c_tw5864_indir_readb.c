
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct tw5864_dev {TYPE_1__* pci; } ;
struct TYPE_2__ {int dev; } ;


 int BIT (int) ;
 int TW5864_ENABLE ;
 int TW5864_IND_CTL ;
 int TW5864_IND_DATA ;
 int dev_err (int *,char*) ;
 int tw_readl (int ) ;
 int tw_writel (int ,int) ;

u8 tw5864_indir_readb(struct tw5864_dev *dev, u16 addr)
{
 int retries = 30000;

 while (tw_readl(TW5864_IND_CTL) & BIT(31) && --retries)
  ;
 if (!retries)
  dev_err(&dev->pci->dev,
   "tw_indir_readl() retries exhausted before reading\n");

 tw_writel(TW5864_IND_CTL, addr << 2 | TW5864_ENABLE);

 retries = 30000;
 while (tw_readl(TW5864_IND_CTL) & BIT(31) && --retries)
  ;
 if (!retries)
  dev_err(&dev->pci->dev,
   "tw_indir_readl() retries exhausted at reading\n");

 return tw_readl(TW5864_IND_DATA);
}
