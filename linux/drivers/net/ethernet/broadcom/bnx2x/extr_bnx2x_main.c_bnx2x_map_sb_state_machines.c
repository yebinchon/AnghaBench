
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hc_index_data {int flags; } ;


 int HC_INDEX_DATA_SM_ID ;
 int HC_INDEX_DATA_SM_ID_SHIFT ;
 size_t HC_INDEX_ETH_RX_CQ_CONS ;
 size_t HC_INDEX_ETH_TX_CQ_CONS_COS0 ;
 size_t HC_INDEX_ETH_TX_CQ_CONS_COS1 ;
 size_t HC_INDEX_ETH_TX_CQ_CONS_COS2 ;
 size_t HC_INDEX_OOO_TX_CQ_CONS ;
 int SM_RX_ID ;
 int SM_TX_ID ;

__attribute__((used)) static void bnx2x_map_sb_state_machines(struct hc_index_data *index_data)
{


 index_data[HC_INDEX_ETH_RX_CQ_CONS].flags &= ~HC_INDEX_DATA_SM_ID;


 index_data[HC_INDEX_OOO_TX_CQ_CONS].flags &= ~HC_INDEX_DATA_SM_ID;
 index_data[HC_INDEX_ETH_TX_CQ_CONS_COS0].flags &= ~HC_INDEX_DATA_SM_ID;
 index_data[HC_INDEX_ETH_TX_CQ_CONS_COS1].flags &= ~HC_INDEX_DATA_SM_ID;
 index_data[HC_INDEX_ETH_TX_CQ_CONS_COS2].flags &= ~HC_INDEX_DATA_SM_ID;



 index_data[HC_INDEX_ETH_RX_CQ_CONS].flags |=
  SM_RX_ID << HC_INDEX_DATA_SM_ID_SHIFT;


 index_data[HC_INDEX_OOO_TX_CQ_CONS].flags |=
  SM_TX_ID << HC_INDEX_DATA_SM_ID_SHIFT;
 index_data[HC_INDEX_ETH_TX_CQ_CONS_COS0].flags |=
  SM_TX_ID << HC_INDEX_DATA_SM_ID_SHIFT;
 index_data[HC_INDEX_ETH_TX_CQ_CONS_COS1].flags |=
  SM_TX_ID << HC_INDEX_DATA_SM_ID_SHIFT;
 index_data[HC_INDEX_ETH_TX_CQ_CONS_COS2].flags |=
  SM_TX_ID << HC_INDEX_DATA_SM_ID_SHIFT;
}
