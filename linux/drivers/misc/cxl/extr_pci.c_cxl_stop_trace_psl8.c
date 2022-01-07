
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl {int slices; int afu_list_lock; scalar_t__* afu; } ;


 int CXL_PSL_SLICE_TRACE ;
 int CXL_PSL_TRACE ;
 int cxl_p1_write (struct cxl*,int ,int) ;
 int cxl_p1n_write (scalar_t__,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void cxl_stop_trace_psl8(struct cxl *adapter)
{
 int slice;


 cxl_p1_write(adapter, CXL_PSL_TRACE, 0x8000000000000017LL);


 spin_lock(&adapter->afu_list_lock);
 for (slice = 0; slice < adapter->slices; slice++) {
  if (adapter->afu[slice])
   cxl_p1n_write(adapter->afu[slice], CXL_PSL_SLICE_TRACE,
          0x8000000000000000LL);
 }
 spin_unlock(&adapter->afu_list_lock);
}
