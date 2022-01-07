
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dummy; } ;


 int GFP_KERNEL ;
 struct video_device* kzalloc (int,int ) ;

struct video_device *video_device_alloc(void)
{
 return kzalloc(sizeof(struct video_device), GFP_KERNEL);
}
