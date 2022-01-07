
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {scalar_t__ fwnode; } ;
struct TYPE_2__ {scalar_t__ fwnode; } ;
struct v4l2_async_subdev {TYPE_1__ match; } ;



__attribute__((used)) static bool match_fwnode(struct v4l2_subdev *sd, struct v4l2_async_subdev *asd)
{
 return sd->fwnode == asd->match.fwnode;
}
