
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pixelformat; int height; int width; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {scalar_t__ type; TYPE_2__ fmt; } ;
struct pwc_device {int type; } ;


 int DEVICE_USE_CODEC1 (int ) ;
 int DEVICE_USE_CODEC23 (int ) ;
 int EINVAL ;
 int PWC_DEBUG_IOCTL (char*) ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;



 int pwc_get_size (struct pwc_device*,int ,int ) ;
 int ** pwc_image_sizes ;
 int pwc_vidioc_fill_fmt (struct v4l2_format*,int ,int ,int) ;

__attribute__((used)) static int pwc_vidioc_try_fmt(struct pwc_device *pdev, struct v4l2_format *f)
{
 int size;

 if (f->type != V4L2_BUF_TYPE_VIDEO_CAPTURE) {
  PWC_DEBUG_IOCTL("Bad video type must be V4L2_BUF_TYPE_VIDEO_CAPTURE\n");
  return -EINVAL;
 }

 switch (f->fmt.pix.pixelformat) {
  case 128:
   break;
  case 130:
   if (DEVICE_USE_CODEC23(pdev->type)) {
    PWC_DEBUG_IOCTL("codec1 is only supported for old pwc webcam\n");
    f->fmt.pix.pixelformat = 128;
   }
   break;
  case 129:
   if (DEVICE_USE_CODEC1(pdev->type)) {
    PWC_DEBUG_IOCTL("codec23 is only supported for new pwc webcam\n");
    f->fmt.pix.pixelformat = 128;
   }
   break;
  default:
   PWC_DEBUG_IOCTL("Unsupported pixel format\n");
   f->fmt.pix.pixelformat = 128;
 }

 size = pwc_get_size(pdev, f->fmt.pix.width, f->fmt.pix.height);
 pwc_vidioc_fill_fmt(f,
       pwc_image_sizes[size][0],
       pwc_image_sizes[size][1],
       f->fmt.pix.pixelformat);

 return 0;
}
