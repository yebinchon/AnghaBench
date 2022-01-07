
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {int dummy; } ;
struct file {int dummy; } ;
struct cx23885_dev {int board; } ;






 int cx23885_set_freq (struct cx23885_dev*,struct v4l2_frequency const*) ;
 int cx23885_set_freq_via_ops (struct cx23885_dev*,struct v4l2_frequency const*) ;
 struct cx23885_dev* video_drvdata (struct file*) ;

int cx23885_set_frequency(struct file *file, void *priv,
 const struct v4l2_frequency *f)
{
 struct cx23885_dev *dev = video_drvdata(file);
 int ret;

 switch (dev->board) {
 case 131:
 case 130:
 case 129:
 case 128:
  ret = cx23885_set_freq_via_ops(dev, f);
  break;
 default:
  ret = cx23885_set_freq(dev, f);
 }

 return ret;
}
