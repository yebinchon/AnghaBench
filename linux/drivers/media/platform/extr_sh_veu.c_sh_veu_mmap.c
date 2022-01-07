
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct sh_veu_file {TYPE_1__* veu_dev; } ;
struct file {struct sh_veu_file* private_data; } ;
struct TYPE_2__ {int m2m_ctx; } ;


 int v4l2_m2m_mmap (struct file*,int ,struct vm_area_struct*) ;

__attribute__((used)) static int sh_veu_mmap(struct file *file, struct vm_area_struct *vma)
{
 struct sh_veu_file *veu_file = file->private_data;

 return v4l2_m2m_mmap(file, veu_file->veu_dev->m2m_ctx, vma);
}
