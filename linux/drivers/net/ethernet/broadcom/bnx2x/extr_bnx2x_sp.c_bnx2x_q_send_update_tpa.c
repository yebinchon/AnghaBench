
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct tpa_update_ramrod_data {int dummy; } ;
struct bnx2x_queue_update_tpa_params {int dummy; } ;
struct TYPE_2__ {struct bnx2x_queue_update_tpa_params update_tpa; } ;
struct bnx2x_queue_state_params {TYPE_1__ params; struct bnx2x_queue_sp_obj* q_obj; } ;
struct bnx2x_queue_sp_obj {int func_id; int * cids; int rdata_mapping; scalar_t__ rdata; } ;
struct bnx2x {int dummy; } ;
typedef int dma_addr_t ;


 size_t BNX2X_PRIMARY_CID_INDEX ;
 int ETH_CONNECTION_TYPE ;
 int RAMROD_CMD_ID_ETH_TPA_UPDATE ;
 int SPE_HDR_FUNCTION_ID_SHIFT ;
 int U64_HI (int ) ;
 int U64_LO (int ) ;
 int bnx2x_q_fill_update_tpa_data (struct bnx2x*,struct bnx2x_queue_sp_obj*,struct bnx2x_queue_update_tpa_params*,struct tpa_update_ramrod_data*) ;
 int bnx2x_sp_post (struct bnx2x*,int ,int ,int ,int ,int) ;
 int memset (struct tpa_update_ramrod_data*,int ,int) ;

__attribute__((used)) static inline int bnx2x_q_send_update_tpa(struct bnx2x *bp,
     struct bnx2x_queue_state_params *params)
{
 struct bnx2x_queue_sp_obj *o = params->q_obj;
 struct tpa_update_ramrod_data *rdata =
  (struct tpa_update_ramrod_data *)o->rdata;
 dma_addr_t data_mapping = o->rdata_mapping;
 struct bnx2x_queue_update_tpa_params *update_tpa_params =
  &params->params.update_tpa;
 u16 type;


 memset(rdata, 0, sizeof(*rdata));


 bnx2x_q_fill_update_tpa_data(bp, o, update_tpa_params, rdata);





 type = ETH_CONNECTION_TYPE |
  ((o->func_id) << SPE_HDR_FUNCTION_ID_SHIFT);







 return bnx2x_sp_post(bp, RAMROD_CMD_ID_ETH_TPA_UPDATE,
        o->cids[BNX2X_PRIMARY_CID_INDEX],
        U64_HI(data_mapping),
        U64_LO(data_mapping), type);
}
