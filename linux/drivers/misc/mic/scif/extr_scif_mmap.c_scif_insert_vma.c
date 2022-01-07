
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct scif_vma_info {int list; struct vm_area_struct* vma; } ;
struct TYPE_2__ {int vma_list; } ;
struct scif_endpt {int lock; TYPE_1__ rma_info; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct scif_vma_info* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int scif_insert_vma(struct scif_endpt *ep, struct vm_area_struct *vma)
{
 struct scif_vma_info *info;
 int err = 0;

 info = kzalloc(sizeof(*info), GFP_KERNEL);
 if (!info) {
  err = -ENOMEM;
  goto done;
 }
 info->vma = vma;
 spin_lock(&ep->lock);
 list_add_tail(&info->list, &ep->rma_info.vma_list);
 spin_unlock(&ep->lock);
done:
 return err;
}
