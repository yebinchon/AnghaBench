
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct file {int dummy; } ;


 int afu_mmap (struct file*,struct vm_area_struct*) ;

int cxl_fd_mmap(struct file *file, struct vm_area_struct *vm)
{
 return afu_mmap(file, vm);
}
