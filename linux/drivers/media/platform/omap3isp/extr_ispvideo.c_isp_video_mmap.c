
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct isp_video_fh {int queue; } ;
struct file {int private_data; } ;


 struct isp_video_fh* to_isp_video_fh (int ) ;
 int vb2_mmap (int *,struct vm_area_struct*) ;

__attribute__((used)) static int isp_video_mmap(struct file *file, struct vm_area_struct *vma)
{
 struct isp_video_fh *vfh = to_isp_video_fh(file->private_data);

 return vb2_mmap(&vfh->queue, vma);
}
