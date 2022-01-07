
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct file {scalar_t__ private_data; } ;
struct camif_vp {scalar_t__ owner; int vb_queue; } ;


 int EBUSY ;
 int vb2_mmap (int *,struct vm_area_struct*) ;
 struct camif_vp* video_drvdata (struct file*) ;

__attribute__((used)) static int s3c_camif_mmap(struct file *file, struct vm_area_struct *vma)
{
 struct camif_vp *vp = video_drvdata(file);
 int ret;

 if (vp->owner && vp->owner != file->private_data)
  ret = -EBUSY;
 else
  ret = vb2_mmap(&vp->vb_queue, vma);

 return ret;
}
