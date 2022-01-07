
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; int vm_page_prot; } ;
struct mtd_info {struct map_info* priv; } ;
struct mtd_file_info {struct mtd_info* mtd; } ;
struct map_info {scalar_t__ phys; int size; } ;
struct file {int f_flags; struct mtd_file_info* private_data; } ;


 int EACCES ;
 int ENODEV ;
 int O_DSYNC ;
 int VM_SHARED ;
 scalar_t__ __pa (int ) ;
 int high_memory ;
 int pgprot_noncached (int ) ;
 int vm_iomap_memory (struct vm_area_struct*,scalar_t__,int ) ;

__attribute__((used)) static int mtdchar_mmap(struct file *file, struct vm_area_struct *vma)
{
 return vma->vm_flags & VM_SHARED ? 0 : -EACCES;

}
