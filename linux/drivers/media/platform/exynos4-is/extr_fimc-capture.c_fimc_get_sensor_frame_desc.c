
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_pads; } ;
struct v4l2_subdev {int v4l2_dev; TYPE_1__ entity; } ;
struct v4l2_plane_pix_format {scalar_t__ sizeimage; } ;
struct v4l2_mbus_frame_desc {unsigned int num_entries; TYPE_2__* entry; } ;
struct TYPE_4__ {scalar_t__ length; } ;


 int EINVAL ;
 scalar_t__ FIMC_MAX_JPEG_BUF_SIZE ;
 int get_frame_desc ;
 int set_frame_desc ;
 int v4l2_err (int ,char*,scalar_t__) ;
 int v4l2_subdev_call (struct v4l2_subdev*,int,int ,int,struct v4l2_mbus_frame_desc*) ;

__attribute__((used)) static int fimc_get_sensor_frame_desc(struct v4l2_subdev *sensor,
          struct v4l2_plane_pix_format *plane_fmt,
          unsigned int num_planes, bool try)
{
 struct v4l2_mbus_frame_desc fd;
 int i, ret;
 int pad;

 for (i = 0; i < num_planes; i++)
  fd.entry[i].length = plane_fmt[i].sizeimage;

 pad = sensor->entity.num_pads - 1;
 if (try)
  ret = v4l2_subdev_call(sensor, pad, set_frame_desc, pad, &fd);
 else
  ret = v4l2_subdev_call(sensor, pad, get_frame_desc, pad, &fd);

 if (ret < 0)
  return ret;

 if (num_planes != fd.num_entries)
  return -EINVAL;

 for (i = 0; i < num_planes; i++)
  plane_fmt[i].sizeimage = fd.entry[i].length;

 if (fd.entry[0].length > FIMC_MAX_JPEG_BUF_SIZE) {
  v4l2_err(sensor->v4l2_dev, "Unsupported buffer size: %u\n",
    fd.entry[0].length);

  return -EINVAL;
 }

 return 0;
}
