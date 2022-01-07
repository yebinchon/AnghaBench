
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {int dummy; } ;
struct file {int dummy; } ;


 int call_all (struct saa7146_dev*,int ,int ,int *) ;
 int querystd ;
 int video ;

__attribute__((used)) static int vidioc_querystd(struct file *file, void *fh, v4l2_std_id *norm)
{
 struct saa7146_dev *dev = ((struct saa7146_fh *)fh)->dev;

 return call_all(dev, video, querystd, norm);
}
