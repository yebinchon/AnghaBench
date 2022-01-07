
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ops; int asd_list; } ;
struct xvip_composite_device {int dev; TYPE_1__ notifier; int v4l2_dev; } ;


 int dev_err (int ,char*) ;
 scalar_t__ list_empty (int *) ;
 int v4l2_async_notifier_register (int *,TYPE_1__*) ;
 int xvip_graph_cleanup (struct xvip_composite_device*) ;
 int xvip_graph_dma_init (struct xvip_composite_device*) ;
 int xvip_graph_notify_ops ;
 int xvip_graph_parse (struct xvip_composite_device*) ;

__attribute__((used)) static int xvip_graph_init(struct xvip_composite_device *xdev)
{
 int ret;


 ret = xvip_graph_dma_init(xdev);
 if (ret < 0) {
  dev_err(xdev->dev, "DMA initialization failed\n");
  goto done;
 }


 ret = xvip_graph_parse(xdev);
 if (ret < 0) {
  dev_err(xdev->dev, "graph parsing failed\n");
  goto done;
 }

 if (list_empty(&xdev->notifier.asd_list)) {
  dev_err(xdev->dev, "no subdev found in graph\n");
  goto done;
 }


 xdev->notifier.ops = &xvip_graph_notify_ops;

 ret = v4l2_async_notifier_register(&xdev->v4l2_dev, &xdev->notifier);
 if (ret < 0) {
  dev_err(xdev->dev, "notifier registration failed\n");
  goto done;
 }

 ret = 0;

done:
 if (ret < 0)
  xvip_graph_cleanup(xdev);

 return ret;
}
