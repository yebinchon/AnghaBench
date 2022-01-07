
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int component_del (int *,int *) ;
 int mtk_smi_larb_component_ops ;
 int pm_runtime_disable (int *) ;

__attribute__((used)) static int mtk_smi_larb_remove(struct platform_device *pdev)
{
 pm_runtime_disable(&pdev->dev);
 component_del(&pdev->dev, &mtk_smi_larb_component_ops);
 return 0;
}
