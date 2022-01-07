
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct scif_endpt {int dummy; } ;
struct file {struct scif_endpt* private_data; } ;


 int scif_mmap (struct vm_area_struct*,struct scif_endpt*) ;

__attribute__((used)) static int scif_fdmmap(struct file *f, struct vm_area_struct *vma)
{
 struct scif_endpt *priv = f->private_data;

 return scif_mmap(vma, priv);
}
