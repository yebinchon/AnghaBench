
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {int dummy; } ;
struct si4713_usb_device {int v4l2_subdev; } ;
struct file {int dummy; } ;


 int g_frequency ;
 int tuner ;
 int v4l2_subdev_call (int ,int ,int ,struct v4l2_frequency*) ;
 struct si4713_usb_device* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_frequency(struct file *file, void *priv,
    struct v4l2_frequency *vf)
{
 struct si4713_usb_device *radio = video_drvdata(file);

 return v4l2_subdev_call(radio->v4l2_subdev, tuner, g_frequency, vf);
}
