
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tm6000_fh {struct tm6000_core* dev; } ;
struct tm6000_core {unsigned int input; int norm; TYPE_1__* vinput; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int type; } ;


 int EINVAL ;
 int vidioc_s_std (struct file*,void*,int ) ;

__attribute__((used)) static int vidioc_s_input(struct file *file, void *priv, unsigned int i)
{
 struct tm6000_fh *fh = priv;
 struct tm6000_core *dev = fh->dev;
 int rc = 0;

 if (i >= 3)
  return -EINVAL;
 if (!dev->vinput[i].type)
  return -EINVAL;

 dev->input = i;

 rc = vidioc_s_std(file, priv, dev->norm);

 return rc;
}
