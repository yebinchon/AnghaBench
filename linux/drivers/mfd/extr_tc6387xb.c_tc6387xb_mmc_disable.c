
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tc6387xb {int clk32k; } ;
struct TYPE_2__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;


 int clk_disable_unprepare (int ) ;
 struct tc6387xb* dev_get_drvdata (int ) ;

__attribute__((used)) static int tc6387xb_mmc_disable(struct platform_device *mmc)
{
 struct tc6387xb *tc6387xb = dev_get_drvdata(mmc->dev.parent);

 clk_disable_unprepare(tc6387xb->clk32k);

 return 0;
}
