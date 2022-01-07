
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int dw_mci_pltfm_register (struct platform_device*,int *) ;
 int hi3798cv200_data ;

__attribute__((used)) static int dw_mci_hi3798cv200_probe(struct platform_device *pdev)
{
 return dw_mci_pltfm_register(pdev, &hi3798cv200_data);
}
