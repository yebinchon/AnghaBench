
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct tw68_dev {int vidq; } ;
struct file {int dummy; } ;
struct TYPE_3__ {int id; } ;


 int EBUSY ;
 int EINVAL ;
 unsigned int TVNORMS ;
 int set_tvnorm (struct tw68_dev*,TYPE_1__*) ;
 TYPE_1__* tvnorms ;
 scalar_t__ vb2_is_busy (int *) ;
 struct tw68_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int tw68_s_std(struct file *file, void *priv, v4l2_std_id id)
{
 struct tw68_dev *dev = video_drvdata(file);
 unsigned int i;

 if (vb2_is_busy(&dev->vidq))
  return -EBUSY;


 for (i = 0; i < TVNORMS; i++) {
  if (id == tvnorms[i].id)
   break;
 }


 if (i == TVNORMS) {
  for (i = 0; i < TVNORMS; i++)
   if (id & tvnorms[i].id)
    break;
 }

 if (i == TVNORMS)
  return -EINVAL;

 set_tvnorm(dev, &tvnorms[i]);
 return 0;
}
