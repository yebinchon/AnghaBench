
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {int dev; } ;
struct TYPE_3__ {int (* match ) (int ,struct v4l2_async_subdev*) ;} ;
struct TYPE_4__ {TYPE_1__ custom; } ;
struct v4l2_async_subdev {TYPE_2__ match; } ;


 int stub1 (int ,struct v4l2_async_subdev*) ;

__attribute__((used)) static bool match_custom(struct v4l2_subdev *sd, struct v4l2_async_subdev *asd)
{
 if (!asd->match.custom.match)

  return 1;

 return asd->match.custom.match(sd->dev, asd);
}
