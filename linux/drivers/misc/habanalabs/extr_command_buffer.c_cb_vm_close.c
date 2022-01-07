
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {long vm_end; long vm_start; int * vm_private_data; } ;
struct hl_cb {long mmap_size; int mmap; int lock; } ;


 int hl_cb_put (struct hl_cb*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void cb_vm_close(struct vm_area_struct *vma)
{
 struct hl_cb *cb = (struct hl_cb *) vma->vm_private_data;
 long new_mmap_size;

 new_mmap_size = cb->mmap_size - (vma->vm_end - vma->vm_start);

 if (new_mmap_size > 0) {
  cb->mmap_size = new_mmap_size;
  return;
 }

 spin_lock(&cb->lock);
 cb->mmap = 0;
 spin_unlock(&cb->lock);

 hl_cb_put(cb);
 vma->vm_private_data = ((void*)0);
}
