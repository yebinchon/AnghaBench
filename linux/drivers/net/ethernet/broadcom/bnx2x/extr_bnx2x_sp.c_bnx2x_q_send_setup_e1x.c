
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client_init_ramrod_data {int dummy; } ;
struct bnx2x_queue_state_params {struct bnx2x_queue_sp_obj* q_obj; } ;
struct bnx2x_queue_sp_obj {int * cids; int rdata_mapping; scalar_t__ rdata; } ;
struct bnx2x {int dummy; } ;
typedef int dma_addr_t ;


 size_t BNX2X_PRIMARY_CID_INDEX ;
 int ETH_CONNECTION_TYPE ;
 int RAMROD_CMD_ID_ETH_CLIENT_SETUP ;
 int U64_HI (int ) ;
 int U64_LO (int ) ;
 int bnx2x_q_fill_setup_data_cmn (struct bnx2x*,struct bnx2x_queue_state_params*,struct client_init_ramrod_data*) ;
 int bnx2x_sp_post (struct bnx2x*,int,int ,int ,int ,int ) ;
 int memset (struct client_init_ramrod_data*,int ,int) ;

__attribute__((used)) static inline int bnx2x_q_send_setup_e1x(struct bnx2x *bp,
     struct bnx2x_queue_state_params *params)
{
 struct bnx2x_queue_sp_obj *o = params->q_obj;
 struct client_init_ramrod_data *rdata =
  (struct client_init_ramrod_data *)o->rdata;
 dma_addr_t data_mapping = o->rdata_mapping;
 int ramrod = RAMROD_CMD_ID_ETH_CLIENT_SETUP;


 memset(rdata, 0, sizeof(*rdata));


 bnx2x_q_fill_setup_data_cmn(bp, params, rdata);







 return bnx2x_sp_post(bp, ramrod, o->cids[BNX2X_PRIMARY_CID_INDEX],
        U64_HI(data_mapping),
        U64_LO(data_mapping), ETH_CONNECTION_TYPE);
}
