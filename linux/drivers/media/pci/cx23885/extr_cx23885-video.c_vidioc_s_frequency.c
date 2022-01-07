
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {int dummy; } ;
struct file {int dummy; } ;


 int cx23885_set_frequency (struct file*,void*,struct v4l2_frequency const*) ;

__attribute__((used)) static int vidioc_s_frequency(struct file *file, void *priv,
 const struct v4l2_frequency *f)
{
 return cx23885_set_frequency(file, priv, f);
}
