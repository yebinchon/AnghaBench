
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int num; int * lock; int tvnorms; int release; int ctrl_handler; int fops; int vfl_dir; TYPE_2__* v4l2_dev; int name; } ;
struct ivtv_stream {int type; char* name; TYPE_3__ vdev; struct ivtv* itv; } ;
struct TYPE_7__ {char* name; int ctrl_handler; } ;
struct TYPE_6__ {scalar_t__* kilobytes; } ;
struct ivtv {int instance; int v4l2_cap; int serialize_lock; TYPE_2__ v4l2_dev; TYPE_1__ options; struct ivtv_stream* streams; } ;
struct TYPE_9__ {int num_offset; char* name; scalar_t__ dma; int v4l2_caps; int fops; } ;


 int IVTV_DEC_STREAM_TYPE_MPG ;
 int IVTV_DEC_STREAM_TYPE_VBI ;
 int IVTV_ENC_STREAM_TYPE_RAD ;
 int IVTV_INFO (char*,char*) ;
 scalar_t__ PCI_DMA_NONE ;
 int V4L2_CAP_RADIO ;
 int V4L2_CAP_SLICED_VBI_OUTPUT ;
 int V4L2_CAP_VIDEO_OUTPUT ;
 int V4L2_STD_ALL ;
 int VFL_DIR_TX ;
 int VIDIOC_ENUMAUDIO ;
 int VIDIOC_ENUMINPUT ;
 int VIDIOC_G_AUDIO ;
 int VIDIOC_G_FREQUENCY ;
 int VIDIOC_G_INPUT ;
 int VIDIOC_G_TUNER ;
 int VIDIOC_S_AUDIO ;
 int VIDIOC_S_FREQUENCY ;
 int VIDIOC_S_INPUT ;
 int VIDIOC_S_STD ;
 int VIDIOC_S_TUNER ;
 int ivtv_first_minor ;
 int ivtv_set_funcs (TYPE_3__*) ;
 TYPE_4__* ivtv_stream_info ;
 int ivtv_stream_init (struct ivtv*,int) ;
 int snprintf (int ,int,char*,char*,char*) ;
 int v4l2_disable_ioctl (TYPE_3__*,int ) ;
 int video_device_release_empty ;

__attribute__((used)) static int ivtv_prep_dev(struct ivtv *itv, int type)
{
 struct ivtv_stream *s = &itv->streams[type];
 int num_offset = ivtv_stream_info[type].num_offset;
 int num = itv->instance + ivtv_first_minor + num_offset;




 s->vdev.v4l2_dev = ((void*)0);
 s->itv = itv;
 s->type = type;
 s->name = ivtv_stream_info[type].name;


 if (type == IVTV_ENC_STREAM_TYPE_RAD && !(itv->v4l2_cap & V4L2_CAP_RADIO))
  return 0;
 if (type >= IVTV_DEC_STREAM_TYPE_MPG && !(itv->v4l2_cap & V4L2_CAP_VIDEO_OUTPUT))
  return 0;



 if (ivtv_stream_info[type].dma != PCI_DMA_NONE &&
     itv->options.kilobytes[type] == 0) {
  IVTV_INFO("Disabled %s device\n", ivtv_stream_info[type].name);
  return 0;
 }

 ivtv_stream_init(itv, type);

 snprintf(s->vdev.name, sizeof(s->vdev.name), "%s %s",
   itv->v4l2_dev.name, s->name);

 s->vdev.num = num;
 s->vdev.v4l2_dev = &itv->v4l2_dev;
 if (ivtv_stream_info[type].v4l2_caps &
   (V4L2_CAP_VIDEO_OUTPUT | V4L2_CAP_SLICED_VBI_OUTPUT))
  s->vdev.vfl_dir = VFL_DIR_TX;
 s->vdev.fops = ivtv_stream_info[type].fops;
 s->vdev.ctrl_handler = itv->v4l2_dev.ctrl_handler;
 s->vdev.release = video_device_release_empty;
 s->vdev.tvnorms = V4L2_STD_ALL;
 s->vdev.lock = &itv->serialize_lock;
 if (s->type == IVTV_DEC_STREAM_TYPE_VBI) {
  v4l2_disable_ioctl(&s->vdev, VIDIOC_S_AUDIO);
  v4l2_disable_ioctl(&s->vdev, VIDIOC_G_AUDIO);
  v4l2_disable_ioctl(&s->vdev, VIDIOC_ENUMAUDIO);
  v4l2_disable_ioctl(&s->vdev, VIDIOC_ENUMINPUT);
  v4l2_disable_ioctl(&s->vdev, VIDIOC_S_INPUT);
  v4l2_disable_ioctl(&s->vdev, VIDIOC_G_INPUT);
  v4l2_disable_ioctl(&s->vdev, VIDIOC_S_FREQUENCY);
  v4l2_disable_ioctl(&s->vdev, VIDIOC_G_FREQUENCY);
  v4l2_disable_ioctl(&s->vdev, VIDIOC_S_TUNER);
  v4l2_disable_ioctl(&s->vdev, VIDIOC_G_TUNER);
  v4l2_disable_ioctl(&s->vdev, VIDIOC_S_STD);
 }
 ivtv_set_funcs(&s->vdev);
 return 0;
}
