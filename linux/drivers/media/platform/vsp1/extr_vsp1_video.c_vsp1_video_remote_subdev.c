
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct media_pad {int entity; int index; } ;


 int is_media_entity_v4l2_subdev (int ) ;
 struct media_pad* media_entity_remote_pad (struct media_pad*) ;
 struct v4l2_subdev* media_entity_to_v4l2_subdev (int ) ;

__attribute__((used)) static struct v4l2_subdev *
vsp1_video_remote_subdev(struct media_pad *local, u32 *pad)
{
 struct media_pad *remote;

 remote = media_entity_remote_pad(local);
 if (!remote || !is_media_entity_v4l2_subdev(remote->entity))
  return ((void*)0);

 if (pad)
  *pad = remote->index;

 return media_entity_to_v4l2_subdev(remote->entity);
}
