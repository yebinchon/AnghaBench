
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct gru_vma_data {int vd_lock; int vd_head; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int STAT (int ) ;
 int gru_dbg (int ,char*,struct gru_vma_data*) ;
 int grudev ;
 struct gru_vma_data* kmalloc (int,int ) ;
 int spin_lock_init (int *) ;
 int vdata_alloc ;

struct gru_vma_data *gru_alloc_vma_data(struct vm_area_struct *vma, int tsid)
{
 struct gru_vma_data *vdata = ((void*)0);

 vdata = kmalloc(sizeof(*vdata), GFP_KERNEL);
 if (!vdata)
  return ((void*)0);

 STAT(vdata_alloc);
 INIT_LIST_HEAD(&vdata->vd_head);
 spin_lock_init(&vdata->vd_lock);
 gru_dbg(grudev, "alloc vdata %p\n", vdata);
 return vdata;
}
