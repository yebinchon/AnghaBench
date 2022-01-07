
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hinic_wq {int wqebb_size; } ;


 int MASKED_WQE_IDX (struct hinic_wq*,int ) ;
 int WQE_PAGE_OFF (struct hinic_wq*,int ) ;
 void* WQ_PAGE_ADDR (struct hinic_wq*,int ) ;
 int memcpy (void*,void*,int ) ;

__attribute__((used)) static void copy_wqe_to_shadow(struct hinic_wq *wq, void *shadow_addr,
          int num_wqebbs, u16 idx)
{
 void *wqebb_addr;
 int i;

 for (i = 0; i < num_wqebbs; i++, idx++) {
  idx = MASKED_WQE_IDX(wq, idx);
  wqebb_addr = WQ_PAGE_ADDR(wq, idx) +
        WQE_PAGE_OFF(wq, idx);

  memcpy(shadow_addr, wqebb_addr, wq->wqebb_size);

  shadow_addr += wq->wqebb_size;
 }
}
