
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int v4l2_dev; } ;
struct cobalt_stream {int vdev; scalar_t__ is_output; } ;
struct cobalt {struct cobalt_stream* streams; } ;



 int COBALT_SYS_CTRL_HPD_TO_CONNECTOR_BIT (unsigned int) ;

 int cobalt_dbg (int,char*,unsigned int,...) ;
 unsigned int cobalt_get_sd_nr (struct v4l2_subdev*) ;
 int cobalt_s_bit_sysctrl (struct cobalt*,int ,int) ;
 struct cobalt* to_cobalt (int ) ;
 int v4l2_event_queue (int *,void*) ;

__attribute__((used)) static void cobalt_notify(struct v4l2_subdev *sd,
     unsigned int notification, void *arg)
{
 struct cobalt *cobalt = to_cobalt(sd->v4l2_dev);
 unsigned sd_nr = cobalt_get_sd_nr(sd);
 struct cobalt_stream *s = &cobalt->streams[sd_nr];
 bool hotplug = arg ? *((int *)arg) : 0;

 if (s->is_output)
  return;

 switch (notification) {
 case 129:
  cobalt_s_bit_sysctrl(cobalt,
   COBALT_SYS_CTRL_HPD_TO_CONNECTOR_BIT(sd_nr), hotplug);
  cobalt_dbg(1, "Set hotplug for adv %d to %d\n", sd_nr, hotplug);
  break;
 case 128:
  cobalt_dbg(1, "Format changed for adv %d\n", sd_nr);
  v4l2_event_queue(&s->vdev, arg);
  break;
 default:
  break;
 }
}
