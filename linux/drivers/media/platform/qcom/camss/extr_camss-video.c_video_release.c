
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int entity; } ;
struct file {int * private_data; } ;


 int v4l2_pipeline_pm_use (int *,int ) ;
 int vb2_fop_release (struct file*) ;
 struct video_device* video_devdata (struct file*) ;

__attribute__((used)) static int video_release(struct file *file)
{
 struct video_device *vdev = video_devdata(file);

 vb2_fop_release(file);

 v4l2_pipeline_pm_use(&vdev->entity, 0);

 file->private_data = ((void*)0);

 return 0;
}
