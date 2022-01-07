
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dev; } ;
struct TYPE_2__ {int device_name; } ;
struct v4l2_async_subdev {TYPE_1__ match; } ;


 int dev_name (int ) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static bool match_devname(struct v4l2_subdev *sd,
     struct v4l2_async_subdev *asd)
{
 return !strcmp(asd->match.device_name, dev_name(sd->dev));
}
