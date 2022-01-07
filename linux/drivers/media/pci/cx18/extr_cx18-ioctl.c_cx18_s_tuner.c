
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ index; } ;
struct file {int dummy; } ;
struct cx18_open_id {struct cx18* cx; } ;
struct cx18 {int dummy; } ;


 int EINVAL ;
 int cx18_call_all (struct cx18*,int ,int ,struct v4l2_tuner const*) ;
 struct cx18_open_id* fh2id (void*) ;
 int s_tuner ;
 int tuner ;

__attribute__((used)) static int cx18_s_tuner(struct file *file, void *fh, const struct v4l2_tuner *vt)
{
 struct cx18_open_id *id = fh2id(fh);
 struct cx18 *cx = id->cx;

 if (vt->index != 0)
  return -EINVAL;

 cx18_call_all(cx, tuner, s_tuner, vt);
 return 0;
}
