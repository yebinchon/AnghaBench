
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xvip_composite_device {int dummy; } ;
struct platform_device {int dummy; } ;


 struct xvip_composite_device* platform_get_drvdata (struct platform_device*) ;
 int xvip_composite_v4l2_cleanup (struct xvip_composite_device*) ;
 int xvip_graph_cleanup (struct xvip_composite_device*) ;

__attribute__((used)) static int xvip_composite_remove(struct platform_device *pdev)
{
 struct xvip_composite_device *xdev = platform_get_drvdata(pdev);

 xvip_graph_cleanup(xdev);
 xvip_composite_v4l2_cleanup(xdev);

 return 0;
}
