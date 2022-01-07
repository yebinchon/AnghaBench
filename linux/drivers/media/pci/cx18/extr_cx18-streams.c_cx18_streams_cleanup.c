
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct video_device {int * v4l2_dev; } ;
struct cx18 {scalar_t__* stream_buffers; TYPE_1__* streams; } ;
struct TYPE_3__ {scalar_t__ buffers; int vbuf_q; struct video_device video_dev; int * dvb; } ;


 int CX18_ENC_STREAM_TYPE_IDX ;
 int CX18_ENC_STREAM_TYPE_TS ;
 int CX18_ENC_STREAM_TYPE_YUV ;
 int CX18_MAX_STREAMS ;
 int cx18_dvb_unregister (TYPE_1__*) ;
 int cx18_stream_free (TYPE_1__*) ;
 int kfree (int *) ;
 int video_unregister_device (struct video_device*) ;
 int videobuf_mmap_free (int *) ;

void cx18_streams_cleanup(struct cx18 *cx, int unregister)
{
 struct video_device *vdev;
 int type;


 for (type = 0; type < CX18_MAX_STREAMS; type++) {


  if (type == CX18_ENC_STREAM_TYPE_TS) {
   if (cx->streams[type].dvb != ((void*)0)) {
    if (unregister)
     cx18_dvb_unregister(&cx->streams[type]);
    kfree(cx->streams[type].dvb);
    cx->streams[type].dvb = ((void*)0);
    cx18_stream_free(&cx->streams[type]);
   }
   continue;
  }


  if (type == CX18_ENC_STREAM_TYPE_IDX) {

   if (cx->stream_buffers[type] != 0) {
    cx->stream_buffers[type] = 0;






    if (cx->streams[type].buffers != 0)
     cx18_stream_free(&cx->streams[type]);
   }
   continue;
  }


  vdev = &cx->streams[type].video_dev;

  if (vdev->v4l2_dev == ((void*)0))
   continue;

  if (type == CX18_ENC_STREAM_TYPE_YUV)
   videobuf_mmap_free(&cx->streams[type].vbuf_q);

  cx18_stream_free(&cx->streams[type]);

  video_unregister_device(vdev);
 }
}
