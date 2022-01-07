
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct hinfc_host {int chip; } ;


 int nand_release (int *) ;
 struct hinfc_host* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int hisi_nfc_remove(struct platform_device *pdev)
{
 struct hinfc_host *host = platform_get_drvdata(pdev);

 nand_release(&host->chip);

 return 0;
}
