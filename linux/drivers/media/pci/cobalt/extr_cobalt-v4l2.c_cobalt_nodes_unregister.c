
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dummy; } ;
struct cobalt_stream {int is_dummy; int is_audio; struct video_device vdev; } ;
struct cobalt {struct cobalt_stream* streams; } ;


 int COBALT_NUM_STREAMS ;
 int cobalt_alsa_exit (struct cobalt_stream*) ;
 int video_unregister_device (struct video_device*) ;

void cobalt_nodes_unregister(struct cobalt *cobalt)
{
 int node;


 for (node = 0; node < COBALT_NUM_STREAMS; node++) {
  struct cobalt_stream *s = cobalt->streams + node;
  struct video_device *vdev = &s->vdev;

  if (!s->is_audio)
   video_unregister_device(vdev);
  else if (!s->is_dummy)
   cobalt_alsa_exit(s);
 }
}
