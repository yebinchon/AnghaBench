
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socrates_nand_host {int io_base; int nand_chip; } ;
struct platform_device {int dev; } ;


 struct socrates_nand_host* dev_get_drvdata (int *) ;
 int iounmap (int ) ;
 int nand_release (int *) ;

__attribute__((used)) static int socrates_nand_remove(struct platform_device *ofdev)
{
 struct socrates_nand_host *host = dev_get_drvdata(&ofdev->dev);

 nand_release(&host->nand_chip);

 iounmap(host->io_base);

 return 0;
}
