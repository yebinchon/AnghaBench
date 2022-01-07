
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct v4l2_fh {int m2m_ctx; } ;
struct file {struct v4l2_fh* private_data; } ;


 int v4l2_m2m_mmap (struct file*,int ,struct vm_area_struct*) ;

int v4l2_m2m_fop_mmap(struct file *file, struct vm_area_struct *vma)
{
 struct v4l2_fh *fh = file->private_data;

 return v4l2_m2m_mmap(file, fh->m2m_ctx, vma);
}
