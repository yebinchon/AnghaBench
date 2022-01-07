
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct media_entity {int dummy; } ;
struct csid_device {int id; } ;


 struct v4l2_subdev* media_entity_to_v4l2_subdev (struct media_entity*) ;
 struct csid_device* v4l2_get_subdevdata (struct v4l2_subdev*) ;

void msm_csid_get_csid_id(struct media_entity *entity, u8 *id)
{
 struct v4l2_subdev *sd = media_entity_to_v4l2_subdev(entity);
 struct csid_device *csid = v4l2_get_subdevdata(sd);

 *id = csid->id;
}
