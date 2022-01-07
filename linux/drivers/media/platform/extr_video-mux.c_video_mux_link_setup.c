
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct video_mux {size_t active; int lock; int mux; int * format_mbus; } ;
struct v4l2_subdev {int dev; } ;
struct media_pad {int flags; size_t index; TYPE_1__* entity; } ;
struct media_entity {size_t num_pads; } ;
struct TYPE_2__ {int name; } ;


 int EBUSY ;
 int MEDIA_LNK_FL_ENABLED ;
 int MEDIA_PAD_FL_SOURCE ;
 int dev_dbg (int ,char*,...) ;
 struct v4l2_subdev* media_entity_to_v4l2_subdev (struct media_entity*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int mux_control_deselect (int ) ;
 int mux_control_try_select (int ,size_t) ;
 struct video_mux* v4l2_subdev_to_video_mux (struct v4l2_subdev*) ;

__attribute__((used)) static int video_mux_link_setup(struct media_entity *entity,
    const struct media_pad *local,
    const struct media_pad *remote, u32 flags)
{
 struct v4l2_subdev *sd = media_entity_to_v4l2_subdev(entity);
 struct video_mux *vmux = v4l2_subdev_to_video_mux(sd);
 u16 source_pad = entity->num_pads - 1;
 int ret = 0;





 if (local->flags & MEDIA_PAD_FL_SOURCE)
  return 0;

 dev_dbg(sd->dev, "link setup '%s':%d->'%s':%d[%d]",
  remote->entity->name, remote->index, local->entity->name,
  local->index, flags & MEDIA_LNK_FL_ENABLED);

 mutex_lock(&vmux->lock);

 if (flags & MEDIA_LNK_FL_ENABLED) {
  if (vmux->active == local->index)
   goto out;

  if (vmux->active >= 0) {
   ret = -EBUSY;
   goto out;
  }

  dev_dbg(sd->dev, "setting %d active\n", local->index);
  ret = mux_control_try_select(vmux->mux, local->index);
  if (ret < 0)
   goto out;
  vmux->active = local->index;


  vmux->format_mbus[source_pad] = vmux->format_mbus[vmux->active];
 } else {
  if (vmux->active != local->index)
   goto out;

  dev_dbg(sd->dev, "going inactive\n");
  mux_control_deselect(vmux->mux);
  vmux->active = -1;
 }

out:
 mutex_unlock(&vmux->lock);
 return ret;
}
