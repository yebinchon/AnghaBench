
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_queue {int type; } ;
struct uvc_video_queue {int dummy; } ;
struct TYPE_2__ {unsigned int dwMaxVideoFrameSize; } ;
struct uvc_streaming {TYPE_1__ ctrl; } ;
struct device {int dummy; } ;


 int EINVAL ;
 unsigned int UVC_METATADA_BUF_SIZE ;

 struct uvc_streaming* uvc_queue_to_stream (struct uvc_video_queue*) ;
 struct uvc_video_queue* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int uvc_queue_setup(struct vb2_queue *vq,
      unsigned int *nbuffers, unsigned int *nplanes,
      unsigned int sizes[], struct device *alloc_devs[])
{
 struct uvc_video_queue *queue = vb2_get_drv_priv(vq);
 struct uvc_streaming *stream;
 unsigned int size;

 switch (vq->type) {
 case 128:
  size = UVC_METATADA_BUF_SIZE;
  break;

 default:
  stream = uvc_queue_to_stream(queue);
  size = stream->ctrl.dwMaxVideoFrameSize;
  break;
 }






 if (*nplanes)
  return *nplanes != 1 || sizes[0] < size ? -EINVAL : 0;

 *nplanes = 1;
 sizes[0] = size;
 return 0;
}
