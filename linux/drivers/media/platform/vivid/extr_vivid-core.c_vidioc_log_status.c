
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vivid_dev {int tpg; } ;
struct video_device {scalar_t__ vfl_dir; scalar_t__ vfl_type; } ;
struct file {int dummy; } ;


 scalar_t__ VFL_DIR_RX ;
 scalar_t__ VFL_TYPE_GRABBER ;
 int tpg_log_status (int *) ;
 int v4l2_ctrl_log_status (struct file*,void*) ;
 struct video_device* video_devdata (struct file*) ;
 struct vivid_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_log_status(struct file *file, void *fh)
{
 struct vivid_dev *dev = video_drvdata(file);
 struct video_device *vdev = video_devdata(file);

 v4l2_ctrl_log_status(file, fh);
 if (vdev->vfl_dir == VFL_DIR_RX && vdev->vfl_type == VFL_TYPE_GRABBER)
  tpg_log_status(&dev->tpg);
 return 0;
}
