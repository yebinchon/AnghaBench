
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * ops; } ;
struct TYPE_7__ {int node; int asd; } ;
struct atmel_isi {TYPE_2__ notifier; TYPE_6__* dev; int v4l2_dev; TYPE_1__ entity; } ;
struct TYPE_9__ {int of_node; } ;


 int dev_err (TYPE_6__*,char*) ;
 int isi_graph_notify_ops ;
 int isi_graph_parse (struct atmel_isi*,int ) ;
 int of_node_put (int ) ;
 int v4l2_async_notifier_add_subdev (TYPE_2__*,int *) ;
 int v4l2_async_notifier_cleanup (TYPE_2__*) ;
 int v4l2_async_notifier_init (TYPE_2__*) ;
 int v4l2_async_notifier_register (int *,TYPE_2__*) ;

__attribute__((used)) static int isi_graph_init(struct atmel_isi *isi)
{
 int ret;


 ret = isi_graph_parse(isi, isi->dev->of_node);
 if (ret < 0) {
  dev_err(isi->dev, "Graph parsing failed\n");
  return ret;
 }

 v4l2_async_notifier_init(&isi->notifier);

 ret = v4l2_async_notifier_add_subdev(&isi->notifier, &isi->entity.asd);
 if (ret) {
  of_node_put(isi->entity.node);
  return ret;
 }

 isi->notifier.ops = &isi_graph_notify_ops;

 ret = v4l2_async_notifier_register(&isi->v4l2_dev, &isi->notifier);
 if (ret < 0) {
  dev_err(isi->dev, "Notifier registration failed\n");
  v4l2_async_notifier_cleanup(&isi->notifier);
  return ret;
 }

 return 0;
}
