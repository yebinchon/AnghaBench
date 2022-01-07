
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int component_add (int *,int *) ;
 int vimc_sen_comp_ops ;

__attribute__((used)) static int vimc_sen_probe(struct platform_device *pdev)
{
 return component_add(&pdev->dev, &vimc_sen_comp_ops);
}
