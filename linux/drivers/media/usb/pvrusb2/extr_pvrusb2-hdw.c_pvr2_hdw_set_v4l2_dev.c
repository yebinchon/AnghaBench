
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int * v4l2_dev; } ;
struct pvr2_hdw {int v4l2_dev; } ;



void pvr2_hdw_set_v4l2_dev(struct pvr2_hdw *hdw, struct video_device *vdev)
{
 vdev->v4l2_dev = &hdw->v4l2_dev;
}
