
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sharpsl_nand {int io; int chip; } ;
struct platform_device {int dummy; } ;


 int iounmap (int ) ;
 int kfree (struct sharpsl_nand*) ;
 int nand_release (int *) ;
 struct sharpsl_nand* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int sharpsl_nand_remove(struct platform_device *pdev)
{
 struct sharpsl_nand *sharpsl = platform_get_drvdata(pdev);


 nand_release(&sharpsl->chip);

 iounmap(sharpsl->io);


 kfree(sharpsl);

 return 0;
}
