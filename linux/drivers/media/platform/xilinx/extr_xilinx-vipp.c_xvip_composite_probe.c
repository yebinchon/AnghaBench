
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xvip_composite_device {int * dev; int notifier; int dmas; } ;
struct platform_device {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int dev_info (int *,char*) ;
 struct xvip_composite_device* devm_kzalloc (int *,int,int ) ;
 int platform_set_drvdata (struct platform_device*,struct xvip_composite_device*) ;
 int v4l2_async_notifier_init (int *) ;
 int xvip_composite_v4l2_cleanup (struct xvip_composite_device*) ;
 int xvip_composite_v4l2_init (struct xvip_composite_device*) ;
 int xvip_graph_init (struct xvip_composite_device*) ;

__attribute__((used)) static int xvip_composite_probe(struct platform_device *pdev)
{
 struct xvip_composite_device *xdev;
 int ret;

 xdev = devm_kzalloc(&pdev->dev, sizeof(*xdev), GFP_KERNEL);
 if (!xdev)
  return -ENOMEM;

 xdev->dev = &pdev->dev;
 INIT_LIST_HEAD(&xdev->dmas);
 v4l2_async_notifier_init(&xdev->notifier);

 ret = xvip_composite_v4l2_init(xdev);
 if (ret < 0)
  return ret;

 ret = xvip_graph_init(xdev);
 if (ret < 0)
  goto error;

 platform_set_drvdata(pdev, xdev);

 dev_info(xdev->dev, "device registered\n");

 return 0;

error:
 xvip_composite_v4l2_cleanup(xdev);
 return ret;
}
