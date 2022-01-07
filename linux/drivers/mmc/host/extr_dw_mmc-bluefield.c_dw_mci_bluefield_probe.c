
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int bluefield_drv_data ;
 int dw_mci_pltfm_register (struct platform_device*,int *) ;

__attribute__((used)) static int dw_mci_bluefield_probe(struct platform_device *pdev)
{
 return dw_mci_pltfm_register(pdev, &bluefield_drv_data);
}
