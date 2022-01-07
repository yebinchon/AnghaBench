
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sram_dev {scalar_t__ clk; int dev; int pool; } ;
struct platform_device {int dummy; } ;


 int clk_disable_unprepare (scalar_t__) ;
 int dev_err (int ,char*) ;
 scalar_t__ gen_pool_avail (int ) ;
 scalar_t__ gen_pool_size (int ) ;
 struct sram_dev* platform_get_drvdata (struct platform_device*) ;
 int sram_free_partitions (struct sram_dev*) ;

__attribute__((used)) static int sram_remove(struct platform_device *pdev)
{
 struct sram_dev *sram = platform_get_drvdata(pdev);

 sram_free_partitions(sram);

 if (gen_pool_avail(sram->pool) < gen_pool_size(sram->pool))
  dev_err(sram->dev, "removed while SRAM allocated\n");

 if (sram->clk)
  clk_disable_unprepare(sram->clk);

 return 0;
}
