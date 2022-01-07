
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mvneta_bm {int dummy; } ;
struct device_node {int dummy; } ;


 struct platform_device* of_find_device_by_node (struct device_node*) ;
 struct mvneta_bm* platform_get_drvdata (struct platform_device*) ;

struct mvneta_bm *mvneta_bm_get(struct device_node *node)
{
 struct platform_device *pdev = of_find_device_by_node(node);

 return pdev ? platform_get_drvdata(pdev) : ((void*)0);
}
