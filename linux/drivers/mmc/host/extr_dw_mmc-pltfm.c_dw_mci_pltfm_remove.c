
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dw_mci {int dummy; } ;


 int dw_mci_remove (struct dw_mci*) ;
 struct dw_mci* platform_get_drvdata (struct platform_device*) ;

int dw_mci_pltfm_remove(struct platform_device *pdev)
{
 struct dw_mci *host = platform_get_drvdata(pdev);

 dw_mci_remove(host);
 return 0;
}
