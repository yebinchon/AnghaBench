
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int video_input; } ;
struct hdpvr_device {TYPE_1__ options; } ;
struct file {int dummy; } ;


 struct hdpvr_device* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_input(struct file *file, void *private_data,
     unsigned int *index)
{
 struct hdpvr_device *dev = video_drvdata(file);

 *index = dev->options.video_input;
 return 0;
}
