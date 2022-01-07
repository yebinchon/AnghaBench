
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int num; int device_caps; int * v4l2_dev; } ;
struct ivtv_stream {int name; TYPE_2__ vdev; int caps; } ;
struct TYPE_6__ {int * kilobytes; } ;
struct ivtv {TYPE_1__ options; int v4l2_cap; struct ivtv_stream* streams; scalar_t__ osd_video_pbase; } ;
struct TYPE_8__ {int vfl_type; int num_offset; } ;


 int ENOMEM ;
 size_t IVTV_DEC_STREAM_TYPE_MPG ;
 size_t IVTV_DEC_STREAM_TYPE_YUV ;
 int IVTV_ENC_STREAM_TYPE_MPG ;
 int IVTV_ERR (char*,int ,int) ;
 int IVTV_INFO (char*,char const*,int ,...) ;
 int V4L2_CAP_VIDEO_OUTPUT_OVERLAY ;



 TYPE_5__* ivtv_stream_info ;
 char* video_device_node_name (TYPE_2__*) ;
 scalar_t__ video_register_device_no_warn (TYPE_2__*,int,int) ;
 int video_set_drvdata (TYPE_2__*,struct ivtv_stream*) ;

__attribute__((used)) static int ivtv_reg_dev(struct ivtv *itv, int type)
{
 struct ivtv_stream *s = &itv->streams[type];
 int vfl_type = ivtv_stream_info[type].vfl_type;
 const char *name;
 int num;

 if (s->vdev.v4l2_dev == ((void*)0))
  return 0;

 num = s->vdev.num;

 if (type != IVTV_ENC_STREAM_TYPE_MPG) {
  struct ivtv_stream *s_mpg = &itv->streams[IVTV_ENC_STREAM_TYPE_MPG];

  if (s_mpg->vdev.v4l2_dev)
   num = s_mpg->vdev.num + ivtv_stream_info[type].num_offset;
 }
 s->vdev.device_caps = s->caps;
 if (itv->osd_video_pbase) {
  itv->streams[IVTV_DEC_STREAM_TYPE_YUV].vdev.device_caps |=
   V4L2_CAP_VIDEO_OUTPUT_OVERLAY;
  itv->streams[IVTV_DEC_STREAM_TYPE_MPG].vdev.device_caps |=
   V4L2_CAP_VIDEO_OUTPUT_OVERLAY;
  itv->v4l2_cap |= V4L2_CAP_VIDEO_OUTPUT_OVERLAY;
 }
 video_set_drvdata(&s->vdev, s);


 if (video_register_device_no_warn(&s->vdev, vfl_type, num)) {
  IVTV_ERR("Couldn't register v4l2 device for %s (device node number %d)\n",
    s->name, num);
  return -ENOMEM;
 }
 name = video_device_node_name(&s->vdev);

 switch (vfl_type) {
 case 130:
  IVTV_INFO("Registered device %s for %s (%d kB)\n",
   name, s->name, itv->options.kilobytes[type]);
  break;
 case 129:
  IVTV_INFO("Registered device %s for %s\n",
   name, s->name);
  break;
 case 128:
  if (itv->options.kilobytes[type])
   IVTV_INFO("Registered device %s for %s (%d kB)\n",
    name, s->name, itv->options.kilobytes[type]);
  else
   IVTV_INFO("Registered device %s for %s\n",
    name, s->name);
  break;
 }
 return 0;
}
