
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_audio {int dummy; } ;
struct file {int dummy; } ;


 int cx23885_query_audinput (struct file*,void*,struct v4l2_audio*) ;

__attribute__((used)) static int vidioc_enum_audinput(struct file *file, void *priv,
    struct v4l2_audio *i)
{
 return cx23885_query_audinput(file, priv, i);
}
