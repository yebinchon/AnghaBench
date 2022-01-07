
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ function; } ;
struct v4l2_subdev {TYPE_1__ entity; } ;


 scalar_t__ MEDIA_ENT_F_CAM_SENSOR ;

__attribute__((used)) static inline bool s5k5baf_is_cis_subdev(struct v4l2_subdev *sd)
{
 return sd->entity.function == MEDIA_ENT_F_CAM_SENSOR;
}
