
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct media_pad {int entity; } ;


 struct media_pad* media_entity_remote_pad (struct media_pad*) ;
 struct v4l2_subdev* media_entity_to_v4l2_subdev (int ) ;

__attribute__((used)) static inline struct v4l2_subdev *adv748x_get_remote_sd(struct media_pad *pad)
{
 pad = media_entity_remote_pad(pad);
 if (!pad)
  return ((void*)0);

 return media_entity_to_v4l2_subdev(pad->entity);
}
