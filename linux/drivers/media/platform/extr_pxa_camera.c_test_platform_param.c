
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_camera_dev {int platform_flags; int width_flags; } ;


 int EINVAL ;
 int PXA_CAMERA_MASTER ;
 unsigned long V4L2_MBUS_DATA_ACTIVE_HIGH ;
 unsigned long V4L2_MBUS_HSYNC_ACTIVE_HIGH ;
 unsigned long V4L2_MBUS_HSYNC_ACTIVE_LOW ;
 unsigned long V4L2_MBUS_MASTER ;
 unsigned long V4L2_MBUS_PCLK_SAMPLE_FALLING ;
 unsigned long V4L2_MBUS_PCLK_SAMPLE_RISING ;
 unsigned long V4L2_MBUS_SLAVE ;
 unsigned long V4L2_MBUS_VSYNC_ACTIVE_HIGH ;
 unsigned long V4L2_MBUS_VSYNC_ACTIVE_LOW ;

__attribute__((used)) static int test_platform_param(struct pxa_camera_dev *pcdev,
          unsigned char buswidth, unsigned long *flags)
{





 *flags = (pcdev->platform_flags & PXA_CAMERA_MASTER ?
    V4L2_MBUS_MASTER : V4L2_MBUS_SLAVE) |
  V4L2_MBUS_HSYNC_ACTIVE_HIGH |
  V4L2_MBUS_HSYNC_ACTIVE_LOW |
  V4L2_MBUS_VSYNC_ACTIVE_HIGH |
  V4L2_MBUS_VSYNC_ACTIVE_LOW |
  V4L2_MBUS_DATA_ACTIVE_HIGH |
  V4L2_MBUS_PCLK_SAMPLE_RISING |
  V4L2_MBUS_PCLK_SAMPLE_FALLING;


 if ((1 << (buswidth - 1)) & pcdev->width_flags)
  return 0;

 return -EINVAL;
}
