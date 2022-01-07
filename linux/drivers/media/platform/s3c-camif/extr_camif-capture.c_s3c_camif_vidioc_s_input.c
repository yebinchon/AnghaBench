
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int s3c_camif_vidioc_s_input(struct file *file, void *priv,
        unsigned int i)
{
 return i == 0 ? 0 : -EINVAL;
}
