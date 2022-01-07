
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_blade_state {void* kernel_dsr; void* kernel_cb; } ;


 int ASYNC_HAN_TO_BID (unsigned long) ;
 struct gru_blade_state* ASYNC_HAN_TO_BS (unsigned long) ;
 int GRU_HANDLE_STRIDE ;
 int GRU_NUM_KERNEL_DSR_BYTES ;
 int gru_lock_kernel_context (int) ;
 int uv_blade_nr_possible_cpus (int) ;

void gru_lock_async_resource(unsigned long han, void **cb, void **dsr)
{
 struct gru_blade_state *bs = ASYNC_HAN_TO_BS(han);
 int blade_id = ASYNC_HAN_TO_BID(han);
 int ncpus;

 gru_lock_kernel_context(blade_id);
 ncpus = uv_blade_nr_possible_cpus(blade_id);
 if (cb)
  *cb = bs->kernel_cb + ncpus * GRU_HANDLE_STRIDE;
 if (dsr)
  *dsr = bs->kernel_dsr + ncpus * GRU_NUM_KERNEL_DSR_BYTES;
}
