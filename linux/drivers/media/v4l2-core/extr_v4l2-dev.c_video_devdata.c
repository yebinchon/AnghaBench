
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dummy; } ;
struct file {int dummy; } ;


 int file_inode (struct file*) ;
 size_t iminor (int ) ;
 struct video_device** video_devices ;

struct video_device *video_devdata(struct file *file)
{
 return video_devices[iminor(file_inode(file))];
}
