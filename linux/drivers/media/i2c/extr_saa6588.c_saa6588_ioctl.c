
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct saa6588_command {int poll_mask; int event_list; int instance; int result; } ;
struct saa6588 {int data_available_for_read; int read_queue; } ;


 long ENOIOCTLCMD ;
 int EPOLLIN ;
 int EPOLLRDNORM ;



 int poll_wait (int ,int *,int ) ;
 int read_from_buf (struct saa6588*,struct saa6588_command*) ;
 struct saa6588* to_saa6588 (struct v4l2_subdev*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static long saa6588_ioctl(struct v4l2_subdev *sd, unsigned int cmd, void *arg)
{
 struct saa6588 *s = to_saa6588(sd);
 struct saa6588_command *a = arg;

 switch (cmd) {

 case 130:
  s->data_available_for_read = 1;
  wake_up_interruptible(&s->read_queue);
  s->data_available_for_read = 0;
  a->result = 0;
  break;

 case 128:
  read_from_buf(s, a);
  break;

 case 129:
  a->poll_mask = 0;
  if (s->data_available_for_read)
   a->poll_mask |= EPOLLIN | EPOLLRDNORM;
  poll_wait(a->instance, &s->read_queue, a->event_list);
  break;

 default:

  return -ENOIOCTLCMD;
 }
 return 0;
}
