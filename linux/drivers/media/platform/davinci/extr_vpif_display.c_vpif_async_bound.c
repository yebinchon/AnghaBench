
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_subdev {int grp_id; int name; } ;
struct v4l2_async_subdev {int dummy; } ;
struct v4l2_async_notifier {int dummy; } ;
struct TYPE_6__ {struct v4l2_subdev** sd; TYPE_2__* config; } ;
struct TYPE_5__ {int subdev_count; TYPE_1__* subdevinfo; } ;
struct TYPE_4__ {int name; } ;


 int EINVAL ;
 int strcmp (int ,int ) ;
 TYPE_3__ vpif_obj ;

__attribute__((used)) static int vpif_async_bound(struct v4l2_async_notifier *notifier,
       struct v4l2_subdev *subdev,
       struct v4l2_async_subdev *asd)
{
 int i;

 for (i = 0; i < vpif_obj.config->subdev_count; i++)
  if (!strcmp(vpif_obj.config->subdevinfo[i].name,
       subdev->name)) {
   vpif_obj.sd[i] = subdev;
   vpif_obj.sd[i]->grp_id = 1 << i;
   return 0;
  }

 return -EINVAL;
}
