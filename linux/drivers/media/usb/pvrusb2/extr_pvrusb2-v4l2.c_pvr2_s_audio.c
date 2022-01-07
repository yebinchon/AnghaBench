
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_audio {scalar_t__ index; } ;
struct file {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int pvr2_s_audio(struct file *file, void *priv, const struct v4l2_audio *vout)
{
 if (vout->index)
  return -EINVAL;
 return 0;
}
