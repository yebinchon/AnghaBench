
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pxa_camera_dev {unsigned long mclk; unsigned long ciclk; int platform_flags; int clk; } ;
struct platform_device {int dev; } ;


 int PXA_CAMERA_MCLK_EN ;
 unsigned long clk_get_rate (int ) ;
 int dev_dbg (int *,char*,unsigned long,unsigned long,int) ;
 int dev_warn (int *,char*,unsigned long) ;

__attribute__((used)) static u32 mclk_get_divisor(struct platform_device *pdev,
       struct pxa_camera_dev *pcdev)
{
 unsigned long mclk = pcdev->mclk;
 u32 div;
 unsigned long lcdclk;

 lcdclk = clk_get_rate(pcdev->clk);
 pcdev->ciclk = lcdclk;


 if (mclk > lcdclk / 4) {
  mclk = lcdclk / 4;
  dev_warn(&pdev->dev,
    "Limiting master clock to %lu\n", mclk);
 }


 div = (lcdclk + 2 * mclk - 1) / (2 * mclk) - 1;


 if (pcdev->platform_flags & PXA_CAMERA_MCLK_EN)
  pcdev->mclk = lcdclk / (2 * (div + 1));

 dev_dbg(&pdev->dev, "LCD clock %luHz, target freq %luHz, divisor %u\n",
  lcdclk, mclk, div);

 return div;
}
