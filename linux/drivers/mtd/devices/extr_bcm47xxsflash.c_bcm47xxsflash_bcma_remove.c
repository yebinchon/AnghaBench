
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct bcm47xxsflash {int window; int mtd; } ;


 int iounmap (int ) ;
 int mtd_device_unregister (int *) ;
 struct bcm47xxsflash* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int bcm47xxsflash_bcma_remove(struct platform_device *pdev)
{
 struct bcm47xxsflash *b47s = platform_get_drvdata(pdev);

 mtd_device_unregister(&b47s->mtd);
 iounmap(b47s->window);

 return 0;
}
