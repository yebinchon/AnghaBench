
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vsp1_video {int lock; int queue; } ;
struct TYPE_4__ {int lock; int config; } ;
struct TYPE_3__ {int rotate; } ;
struct vsp1_rwpf {TYPE_2__ entity; TYPE_1__ flip; struct vsp1_video* video; } ;
struct v4l2_mbus_framefmt {int height; int width; } ;


 int EBUSY ;
 int RWPF_PAD_SINK ;
 int RWPF_PAD_SOURCE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ vb2_is_busy (int *) ;
 struct v4l2_mbus_framefmt* vsp1_entity_get_pad_format (TYPE_2__*,int ,int ) ;

__attribute__((used)) static int vsp1_wpf_set_rotation(struct vsp1_rwpf *wpf, unsigned int rotation)
{
 struct vsp1_video *video = wpf->video;
 struct v4l2_mbus_framefmt *sink_format;
 struct v4l2_mbus_framefmt *source_format;
 bool rotate;
 int ret = 0;





 rotate = rotation == 90 || rotation == 270;
 if (rotate == wpf->flip.rotate)
  return 0;


 mutex_lock(&video->lock);

 if (vb2_is_busy(&video->queue)) {
  ret = -EBUSY;
  goto done;
 }

 sink_format = vsp1_entity_get_pad_format(&wpf->entity,
       wpf->entity.config,
       RWPF_PAD_SINK);
 source_format = vsp1_entity_get_pad_format(&wpf->entity,
         wpf->entity.config,
         RWPF_PAD_SOURCE);

 mutex_lock(&wpf->entity.lock);

 if (rotate) {
  source_format->width = sink_format->height;
  source_format->height = sink_format->width;
 } else {
  source_format->width = sink_format->width;
  source_format->height = sink_format->height;
 }

 wpf->flip.rotate = rotate;

 mutex_unlock(&wpf->entity.lock);

done:
 mutex_unlock(&video->lock);
 return ret;
}
