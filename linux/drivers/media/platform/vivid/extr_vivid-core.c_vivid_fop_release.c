
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_14__ {int flags; } ;
struct TYPE_13__ {int flags; } ;
struct TYPE_12__ {int flags; } ;
struct TYPE_11__ {int flags; } ;
struct TYPE_10__ {int flags; } ;
struct TYPE_9__ {int flags; } ;
struct TYPE_8__ {int flags; } ;
struct vivid_dev {int * radio_tx_rds_owner; scalar_t__ radio_tx_rds_last_block; int * radio_rx_rds_owner; scalar_t__ radio_rx_rds_last_block; int * overlay_cap_owner; int mutex; TYPE_7__ radio_tx_dev; TYPE_6__ radio_rx_dev; TYPE_5__ sdr_cap_dev; TYPE_4__ vbi_out_dev; TYPE_3__ vbi_cap_dev; TYPE_2__ vid_out_dev; TYPE_1__ vid_cap_dev; int v4l2_dev; } ;
struct video_device {scalar_t__ queue; } ;
struct file {int * private_data; } ;


 int V4L2_FL_REGISTERED ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int no_error_inj ;
 int set_bit (int ,int *) ;
 scalar_t__ v4l2_fh_is_singular_file (struct file*) ;
 int v4l2_fh_release (struct file*) ;
 int v4l2_info (int *,char*) ;
 int vb2_fop_release (struct file*) ;
 struct video_device* video_devdata (struct file*) ;
 struct vivid_dev* video_drvdata (struct file*) ;
 int video_is_registered (struct video_device*) ;
 scalar_t__ vivid_is_last_user (struct vivid_dev*) ;

__attribute__((used)) static int vivid_fop_release(struct file *file)
{
 struct vivid_dev *dev = video_drvdata(file);
 struct video_device *vdev = video_devdata(file);

 mutex_lock(&dev->mutex);
 if (!no_error_inj && v4l2_fh_is_singular_file(file) &&
     !video_is_registered(vdev) && vivid_is_last_user(dev)) {





  v4l2_info(&dev->v4l2_dev, "reconnect\n");
  set_bit(V4L2_FL_REGISTERED, &dev->vid_cap_dev.flags);
  set_bit(V4L2_FL_REGISTERED, &dev->vid_out_dev.flags);
  set_bit(V4L2_FL_REGISTERED, &dev->vbi_cap_dev.flags);
  set_bit(V4L2_FL_REGISTERED, &dev->vbi_out_dev.flags);
  set_bit(V4L2_FL_REGISTERED, &dev->sdr_cap_dev.flags);
  set_bit(V4L2_FL_REGISTERED, &dev->radio_rx_dev.flags);
  set_bit(V4L2_FL_REGISTERED, &dev->radio_tx_dev.flags);
 }
 mutex_unlock(&dev->mutex);
 if (file->private_data == dev->overlay_cap_owner)
  dev->overlay_cap_owner = ((void*)0);
 if (file->private_data == dev->radio_rx_rds_owner) {
  dev->radio_rx_rds_last_block = 0;
  dev->radio_rx_rds_owner = ((void*)0);
 }
 if (file->private_data == dev->radio_tx_rds_owner) {
  dev->radio_tx_rds_last_block = 0;
  dev->radio_tx_rds_owner = ((void*)0);
 }
 if (vdev->queue)
  return vb2_fop_release(file);
 return v4l2_fh_release(file);
}
