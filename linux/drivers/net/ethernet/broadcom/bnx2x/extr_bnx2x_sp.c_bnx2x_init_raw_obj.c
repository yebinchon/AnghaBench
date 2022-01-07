
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u32 ;
struct bnx2x_raw_obj {int state; unsigned long* pstate; int wait_comp; int set_pending; int clear_pending; int check_pending; int obj_type; int rdata_mapping; void* rdata; void* cl_id; int cid; void* func_id; } ;
typedef int dma_addr_t ;
typedef int bnx2x_obj_type ;


 int bnx2x_raw_check_pending ;
 int bnx2x_raw_clear_pending ;
 int bnx2x_raw_set_pending ;
 int bnx2x_raw_wait ;

__attribute__((used)) static inline void bnx2x_init_raw_obj(struct bnx2x_raw_obj *raw, u8 cl_id,
 u32 cid, u8 func_id, void *rdata, dma_addr_t rdata_mapping, int state,
 unsigned long *pstate, bnx2x_obj_type type)
{
 raw->func_id = func_id;
 raw->cid = cid;
 raw->cl_id = cl_id;
 raw->rdata = rdata;
 raw->rdata_mapping = rdata_mapping;
 raw->state = state;
 raw->pstate = pstate;
 raw->obj_type = type;
 raw->check_pending = bnx2x_raw_check_pending;
 raw->clear_pending = bnx2x_raw_clear_pending;
 raw->set_pending = bnx2x_raw_set_pending;
 raw->wait_comp = bnx2x_raw_wait;
}
