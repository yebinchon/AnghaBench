
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct media_entity {scalar_t__ use_count; } ;


 int ENOIOCTLCMD ;
 int WARN_ON (int) ;
 int core ;
 scalar_t__ is_media_entity_v4l2_subdev (struct media_entity*) ;
 struct v4l2_subdev* media_entity_to_v4l2_subdev (struct media_entity*) ;
 int s_power ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,int) ;

__attribute__((used)) static int pipeline_pm_power_one(struct media_entity *entity, int change)
{
 struct v4l2_subdev *subdev;
 int ret;

 subdev = is_media_entity_v4l2_subdev(entity)
        ? media_entity_to_v4l2_subdev(entity) : ((void*)0);

 if (entity->use_count == 0 && change > 0 && subdev != ((void*)0)) {
  ret = v4l2_subdev_call(subdev, core, s_power, 1);
  if (ret < 0 && ret != -ENOIOCTLCMD)
   return ret;
 }

 entity->use_count += change;
 WARN_ON(entity->use_count < 0);

 if (entity->use_count == 0 && change < 0 && subdev != ((void*)0))
  v4l2_subdev_call(subdev, core, s_power, 0);

 return 0;
}
