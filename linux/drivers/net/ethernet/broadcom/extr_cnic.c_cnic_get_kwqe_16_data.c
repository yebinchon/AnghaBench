
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lo; int hi; } ;
union l5cm_specific_data {TYPE_1__ phy_address; } ;
typedef int u64 ;
typedef size_t u32 ;
struct cnic_local {struct cnic_context* ctx_tbl; } ;
struct cnic_context {void* kwqe_data; scalar_t__ kwqe_data_mapping; } ;
typedef scalar_t__ dma_addr_t ;



__attribute__((used)) static void *cnic_get_kwqe_16_data(struct cnic_local *cp, u32 l5_cid,
       union l5cm_specific_data *l5_data)
{
 struct cnic_context *ctx = &cp->ctx_tbl[l5_cid];
 dma_addr_t map;

 map = ctx->kwqe_data_mapping;
 l5_data->phy_address.lo = (u64) map & 0xffffffff;
 l5_data->phy_address.hi = (u64) map >> 32;
 return ctx->kwqe_data;
}
