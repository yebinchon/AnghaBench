
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
 int TW5864_RW ;
 int dev_err (int *,char*) ;
 int tw_readl (int ) ;
 int tw_writel (int ,int) ;

void tw5864_indir_writeb(struct tw5864_dev *dev, u16 addr, u8 data)
{
 int retries = 30000;

 while (tw_readl(TW5864_IND_CTL) & BIT(31) && --retries)
  ;
 if (!retries)
  dev_err(&dev->pci->dev,
   "tw_indir_writel() retries exhausted before writing\n");

 tw_writel(TW5864_IND_DATA, data);
 tw_writel(TW5864_IND_CTL, addr << 2 | TW5864_RW | TW5864_ENABLE);
}
