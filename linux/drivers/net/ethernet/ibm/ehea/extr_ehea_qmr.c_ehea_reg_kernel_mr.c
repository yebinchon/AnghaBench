
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct ehea_mr {struct ehea_adapter* adapter; int vaddr; int handle; int lkey; } ;
struct ehea_adapter {int handle; int pd; } ;
struct TYPE_2__ {int * top; } ;


 int EHEA_BUSMAP_START ;
 unsigned long EHEA_MAP_ENTRIES ;
 int EHEA_MR_ACC_CTRL ;
 int EIO ;
 int ENOMEM ;
 int FORCE_FREE ;
 int GFP_KERNEL ;
 scalar_t__ H_PAGE_REGISTERED ;
 scalar_t__ H_SUCCESS ;
 TYPE_1__* ehea_bmap ;
 scalar_t__ ehea_h_alloc_resource_mr (int ,int ,int ,int ,int ,int *,int *) ;
 int ehea_h_free_resource (int ,int ,int ) ;
 int ehea_mr_len ;
 scalar_t__ ehea_reg_mr_dir_sections (unsigned long,scalar_t__*,struct ehea_adapter*,struct ehea_mr*) ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int ) ;
 int pr_err (char*) ;

int ehea_reg_kernel_mr(struct ehea_adapter *adapter, struct ehea_mr *mr)
{
 int ret;
 u64 *pt;
 u64 hret;
 u32 acc_ctrl = EHEA_MR_ACC_CTRL;

 unsigned long top;

 pt = (void *)get_zeroed_page(GFP_KERNEL);
 if (!pt) {
  pr_err("no mem\n");
  ret = -ENOMEM;
  goto out;
 }

 hret = ehea_h_alloc_resource_mr(adapter->handle, EHEA_BUSMAP_START,
     ehea_mr_len, acc_ctrl, adapter->pd,
     &mr->handle, &mr->lkey);

 if (hret != H_SUCCESS) {
  pr_err("alloc_resource_mr failed\n");
  ret = -EIO;
  goto out;
 }

 if (!ehea_bmap) {
  ehea_h_free_resource(adapter->handle, mr->handle, FORCE_FREE);
  pr_err("no busmap available\n");
  ret = -EIO;
  goto out;
 }

 for (top = 0; top < EHEA_MAP_ENTRIES; top++) {
  if (!ehea_bmap->top[top])
   continue;

  hret = ehea_reg_mr_dir_sections(top, pt, adapter, mr);
  if((hret != H_PAGE_REGISTERED) && (hret != H_SUCCESS))
   break;
 }

 if (hret != H_SUCCESS) {
  ehea_h_free_resource(adapter->handle, mr->handle, FORCE_FREE);
  pr_err("registering mr failed\n");
  ret = -EIO;
  goto out;
 }

 mr->vaddr = EHEA_BUSMAP_START;
 mr->adapter = adapter;
 ret = 0;
out:
 free_page((unsigned long)pt);
 return ret;
}
