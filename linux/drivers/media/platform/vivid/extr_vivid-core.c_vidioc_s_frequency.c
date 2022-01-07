
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vivid_dev {int radio_tx_freq; int radio_rx_freq; } ;
struct video_device {scalar_t__ vfl_type; scalar_t__ vfl_dir; } ;
struct v4l2_frequency {int dummy; } ;
struct file {int dummy; } ;


 scalar_t__ VFL_DIR_RX ;
 scalar_t__ VFL_TYPE_RADIO ;
 scalar_t__ VFL_TYPE_SDR ;
 struct video_device* video_devdata (struct file*) ;
 struct vivid_dev* video_drvdata (struct file*) ;
 int vivid_radio_s_frequency (struct file*,int *,struct v4l2_frequency const*) ;
 int vivid_sdr_s_frequency (struct file*,void*,struct v4l2_frequency const*) ;
 int vivid_video_s_frequency (struct file*,void*,struct v4l2_frequency const*) ;

__attribute__((used)) static int vidioc_s_frequency(struct file *file, void *fh, const struct v4l2_frequency *vf)
{
 struct vivid_dev *dev = video_drvdata(file);
 struct video_device *vdev = video_devdata(file);

 if (vdev->vfl_type == VFL_TYPE_RADIO)
  return vivid_radio_s_frequency(file,
   vdev->vfl_dir == VFL_DIR_RX ?
   &dev->radio_rx_freq : &dev->radio_tx_freq, vf);
 if (vdev->vfl_type == VFL_TYPE_SDR)
  return vivid_sdr_s_frequency(file, fh, vf);
 return vivid_video_s_frequency(file, fh, vf);
}
