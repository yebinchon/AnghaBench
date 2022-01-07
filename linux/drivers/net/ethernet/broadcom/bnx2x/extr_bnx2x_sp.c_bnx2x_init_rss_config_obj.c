
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct bnx2x_rss_config_obj {int config_rss; int engine_id; int raw; } ;
struct bnx2x {int dummy; } ;
typedef int dma_addr_t ;
typedef int bnx2x_obj_type ;


 int bnx2x_init_raw_obj (int *,int ,int ,int ,void*,int ,int,unsigned long*,int ) ;
 int bnx2x_setup_rss ;

void bnx2x_init_rss_config_obj(struct bnx2x *bp,
          struct bnx2x_rss_config_obj *rss_obj,
          u8 cl_id, u32 cid, u8 func_id, u8 engine_id,
          void *rdata, dma_addr_t rdata_mapping,
          int state, unsigned long *pstate,
          bnx2x_obj_type type)
{
 bnx2x_init_raw_obj(&rss_obj->raw, cl_id, cid, func_id, rdata,
      rdata_mapping, state, pstate, type);

 rss_obj->engine_id = engine_id;
 rss_obj->config_rss = bnx2x_setup_rss;
}
