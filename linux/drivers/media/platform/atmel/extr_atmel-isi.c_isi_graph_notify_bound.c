
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int name; } ;
struct v4l2_async_subdev {int dummy; } ;
struct v4l2_async_notifier {int dummy; } ;
struct TYPE_2__ {struct v4l2_subdev* subdev; } ;
struct atmel_isi {TYPE_1__ entity; int dev; } ;


 int dev_dbg (int ,char*,int ) ;
 struct atmel_isi* notifier_to_isi (struct v4l2_async_notifier*) ;

__attribute__((used)) static int isi_graph_notify_bound(struct v4l2_async_notifier *notifier,
       struct v4l2_subdev *subdev,
       struct v4l2_async_subdev *asd)
{
 struct atmel_isi *isi = notifier_to_isi(notifier);

 dev_dbg(isi->dev, "subdev %s bound\n", subdev->name);

 isi->entity.subdev = subdev;

 return 0;
}
