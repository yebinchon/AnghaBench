
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct media_pad {unsigned int index; int entity; } ;
struct media_entity {int dummy; } ;
struct isp_res_device {void* input; } ;


 int EBUSY ;
 int EINVAL ;
 int MEDIA_LNK_FL_ENABLED ;
 void* RESIZER_INPUT_MEMORY ;
 void* RESIZER_INPUT_NONE ;
 void* RESIZER_INPUT_VP ;


 scalar_t__ is_media_entity_v4l2_subdev (int ) ;
 struct v4l2_subdev* media_entity_to_v4l2_subdev (struct media_entity*) ;
 struct isp_res_device* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int resizer_link_setup(struct media_entity *entity,
         const struct media_pad *local,
         const struct media_pad *remote, u32 flags)
{
 struct v4l2_subdev *sd = media_entity_to_v4l2_subdev(entity);
 struct isp_res_device *res = v4l2_get_subdevdata(sd);
 unsigned int index = local->index;


 if (is_media_entity_v4l2_subdev(remote->entity))
  index |= 2 << 16;

 switch (index) {
 case 129:

  if (flags & MEDIA_LNK_FL_ENABLED) {
   if (res->input == RESIZER_INPUT_VP)
    return -EBUSY;
   res->input = RESIZER_INPUT_MEMORY;
  } else {
   if (res->input == RESIZER_INPUT_MEMORY)
    res->input = RESIZER_INPUT_NONE;
  }
  break;

 case 129 | 2 << 16:

  if (flags & MEDIA_LNK_FL_ENABLED) {
   if (res->input == RESIZER_INPUT_MEMORY)
    return -EBUSY;
   res->input = RESIZER_INPUT_VP;
  } else {
   if (res->input == RESIZER_INPUT_VP)
    res->input = RESIZER_INPUT_NONE;
  }
  break;

 case 128:

  break;

 default:
  return -EINVAL;
 }

 return 0;
}
