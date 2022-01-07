
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vfe_line {int dummy; } ;
struct vfe_device {int id; } ;
struct v4l2_subdev {int dummy; } ;
struct media_entity {int dummy; } ;


 struct v4l2_subdev* media_entity_to_v4l2_subdev (struct media_entity*) ;
 struct vfe_device* to_vfe (struct vfe_line*) ;
 struct vfe_line* v4l2_get_subdevdata (struct v4l2_subdev*) ;

void msm_vfe_get_vfe_id(struct media_entity *entity, u8 *id)
{
 struct v4l2_subdev *sd;
 struct vfe_line *line;
 struct vfe_device *vfe;

 sd = media_entity_to_v4l2_subdev(entity);
 line = v4l2_get_subdevdata(sd);
 vfe = to_vfe(line);

 *id = vfe->id;
}
