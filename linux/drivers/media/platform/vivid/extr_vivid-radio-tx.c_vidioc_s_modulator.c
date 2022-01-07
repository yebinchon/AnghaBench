
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vivid_dev {int radio_tx_subchans; } ;
struct v4l2_modulator {int txsubchans; scalar_t__ index; } ;
struct file {int dummy; } ;


 int EINVAL ;
 struct vivid_dev* video_drvdata (struct file*) ;

int vidioc_s_modulator(struct file *file, void *fh, const struct v4l2_modulator *a)
{
 struct vivid_dev *dev = video_drvdata(file);

 if (a->index)
  return -EINVAL;
 if (a->txsubchans & ~0x13)
  return -EINVAL;
 dev->radio_tx_subchans = a->txsubchans;
 return 0;
}
