
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {struct dw_mci_drv_data* data; } ;
struct dw_mci_drv_data {int dummy; } ;


 int dw_mci_pltfm_match ;
 int dw_mci_pltfm_register (struct platform_device*,struct dw_mci_drv_data const*) ;
 struct of_device_id* of_match_node (int ,scalar_t__) ;

__attribute__((used)) static int dw_mci_pltfm_probe(struct platform_device *pdev)
{
 const struct dw_mci_drv_data *drv_data = ((void*)0);
 const struct of_device_id *match;

 if (pdev->dev.of_node) {
  match = of_match_node(dw_mci_pltfm_match, pdev->dev.of_node);
  drv_data = match->data;
 }

 return dw_mci_pltfm_register(pdev, drv_data);
}
