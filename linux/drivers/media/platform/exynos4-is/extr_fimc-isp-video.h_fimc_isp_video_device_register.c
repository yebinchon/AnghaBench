
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_device {int dummy; } ;
struct fimc_isp {int dummy; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;



__attribute__((used)) static inline int fimc_isp_video_device_register(struct fimc_isp *isp,
      struct v4l2_device *v4l2_dev,
      enum v4l2_buf_type type)
{
 return 0;
}
