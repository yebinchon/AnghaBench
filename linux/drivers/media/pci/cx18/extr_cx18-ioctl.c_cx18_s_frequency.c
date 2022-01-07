
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {scalar_t__ tuner; int frequency; } ;
struct file {int dummy; } ;
struct cx18_open_id {struct cx18* cx; } ;
struct cx18 {int dummy; } ;


 int CX18_DEBUG_INFO (char*,int ) ;
 int EINVAL ;
 int cx18_call_all (struct cx18*,int ,int ,struct v4l2_frequency const*) ;
 int cx18_mute (struct cx18*) ;
 int cx18_unmute (struct cx18*) ;
 struct cx18_open_id* fh2id (void*) ;
 int s_frequency ;
 int tuner ;

int cx18_s_frequency(struct file *file, void *fh, const struct v4l2_frequency *vf)
{
 struct cx18_open_id *id = fh2id(fh);
 struct cx18 *cx = id->cx;

 if (vf->tuner != 0)
  return -EINVAL;

 cx18_mute(cx);
 CX18_DEBUG_INFO("v4l2 ioctl: set frequency %d\n", vf->frequency);
 cx18_call_all(cx, tuner, s_frequency, vf);
 cx18_unmute(cx);
 return 0;
}
