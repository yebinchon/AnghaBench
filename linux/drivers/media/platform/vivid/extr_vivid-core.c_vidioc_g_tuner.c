
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {scalar_t__ vfl_type; } ;
struct v4l2_tuner {int dummy; } ;
struct file {int dummy; } ;


 scalar_t__ VFL_TYPE_RADIO ;
 scalar_t__ VFL_TYPE_SDR ;
 struct video_device* video_devdata (struct file*) ;
 int vivid_radio_rx_g_tuner (struct file*,void*,struct v4l2_tuner*) ;
 int vivid_sdr_g_tuner (struct file*,void*,struct v4l2_tuner*) ;
 int vivid_video_g_tuner (struct file*,void*,struct v4l2_tuner*) ;

__attribute__((used)) static int vidioc_g_tuner(struct file *file, void *fh, struct v4l2_tuner *vt)
{
 struct video_device *vdev = video_devdata(file);

 if (vdev->vfl_type == VFL_TYPE_RADIO)
  return vivid_radio_rx_g_tuner(file, fh, vt);
 if (vdev->vfl_type == VFL_TYPE_SDR)
  return vivid_sdr_g_tuner(file, fh, vt);
 return vivid_video_g_tuner(file, fh, vt);
}
