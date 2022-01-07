
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ice_hw {int dummy; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int ICE_DBG_QCTX ;
 int ICE_ERR_BAD_PTR ;
 int ICE_ERR_PARAM ;
 int ICE_RXQ_CTX_SIZE_DWORDS ;
 int QRX_CONTEXT (int,int ) ;
 int QRX_CTRL_MAX_INDEX ;
 int ice_debug (struct ice_hw*,int ,char*,int,int ) ;
 int wr32 (struct ice_hw*,int ,int ) ;

__attribute__((used)) static enum ice_status
ice_copy_rxq_ctx_to_hw(struct ice_hw *hw, u8 *ice_rxq_ctx, u32 rxq_index)
{
 u8 i;

 if (!ice_rxq_ctx)
  return ICE_ERR_BAD_PTR;

 if (rxq_index > QRX_CTRL_MAX_INDEX)
  return ICE_ERR_PARAM;


 for (i = 0; i < ICE_RXQ_CTX_SIZE_DWORDS; i++) {
  wr32(hw, QRX_CONTEXT(i, rxq_index),
       *((u32 *)(ice_rxq_ctx + (i * sizeof(u32)))));

  ice_debug(hw, ICE_DBG_QCTX, "qrxdata[%d]: %08X\n", i,
     *((u32 *)(ice_rxq_ctx + (i * sizeof(u32)))));
 }

 return 0;
}
