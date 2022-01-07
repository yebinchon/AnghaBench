
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_10__ {int num; int * lock; int tvnorms; int release; int * fops; TYPE_1__* v4l2_dev; int name; } ;
struct cx18_stream {int type; char* name; TYPE_5__ video_dev; scalar_t__ buffers; int * dvb; struct cx18* cx; } ;
struct cx18_dvb {int dummy; } ;
struct TYPE_6__ {char* name; } ;
struct cx18 {int v4l2_cap; int instance; scalar_t__* stream_buffers; int serialize_lock; int tuner_std; TYPE_3__* card; TYPE_1__ v4l2_dev; struct cx18_stream* streams; } ;
struct TYPE_9__ {int num_offset; char* name; scalar_t__ dma; } ;
struct TYPE_8__ {int hw_all; TYPE_2__* video_inputs; } ;
struct TYPE_7__ {scalar_t__ video_type; } ;


 scalar_t__ CX18_CARD_INPUT_VID_TUNER ;
 int CX18_ENC_STREAM_TYPE_RAD ;
 int CX18_ENC_STREAM_TYPE_TS ;
 int CX18_ENC_STREAM_TYPE_VBI ;
 int CX18_ERR (char*,char*) ;
 int CX18_HW_DVB ;
 int CX18_INFO (char*,char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ PCI_DMA_NONE ;
 int V4L2_CAP_RADIO ;
 int V4L2_CAP_SLICED_VBI_CAPTURE ;
 int V4L2_CAP_VBI_CAPTURE ;
 int V4L2_STD_ALL ;
 int cx18_first_minor ;
 int cx18_set_funcs (TYPE_5__*) ;
 TYPE_4__* cx18_stream_info ;
 int cx18_stream_init (struct cx18*,int) ;
 int cx18_v4l2_enc_fops ;
 int * kzalloc (int,int ) ;
 int snprintf (int ,int,char*,char*,char*) ;
 int video_device_release_empty ;

__attribute__((used)) static int cx18_prep_dev(struct cx18 *cx, int type)
{
 struct cx18_stream *s = &cx->streams[type];
 u32 cap = cx->v4l2_cap;
 int num_offset = cx18_stream_info[type].num_offset;
 int num = cx->instance + cx18_first_minor + num_offset;
 s->video_dev.v4l2_dev = ((void*)0);
 s->dvb = ((void*)0);
 s->cx = cx;
 s->type = type;
 s->name = cx18_stream_info[type].name;


 if (type == CX18_ENC_STREAM_TYPE_RAD && !(cap & V4L2_CAP_RADIO))
  return 0;


 if (type == CX18_ENC_STREAM_TYPE_VBI &&
     !(cap & (V4L2_CAP_VBI_CAPTURE | V4L2_CAP_SLICED_VBI_CAPTURE)))
  return 0;



 if (cx18_stream_info[type].dma != PCI_DMA_NONE &&
     cx->stream_buffers[type] == 0) {
  CX18_INFO("Disabled %s device\n", cx18_stream_info[type].name);
  return 0;
 }

 cx18_stream_init(cx, type);


 if (type == CX18_ENC_STREAM_TYPE_TS) {
  if (cx->card->hw_all & CX18_HW_DVB) {
   s->dvb = kzalloc(sizeof(struct cx18_dvb), GFP_KERNEL);
   if (s->dvb == ((void*)0)) {
    CX18_ERR("Couldn't allocate cx18_dvb structure for %s\n",
      s->name);
    return -ENOMEM;
   }
  } else {

   s->buffers = 0;
  }
 }

 if (num_offset == -1)
  return 0;


 snprintf(s->video_dev.name, sizeof(s->video_dev.name), "%s %s",
   cx->v4l2_dev.name, s->name);

 s->video_dev.num = num;
 s->video_dev.v4l2_dev = &cx->v4l2_dev;
 s->video_dev.fops = &cx18_v4l2_enc_fops;
 s->video_dev.release = video_device_release_empty;
 if (cx->card->video_inputs->video_type == CX18_CARD_INPUT_VID_TUNER)
  s->video_dev.tvnorms = cx->tuner_std;
 else
  s->video_dev.tvnorms = V4L2_STD_ALL;
 s->video_dev.lock = &cx->serialize_lock;
 cx18_set_funcs(&s->video_dev);
 return 0;
}
