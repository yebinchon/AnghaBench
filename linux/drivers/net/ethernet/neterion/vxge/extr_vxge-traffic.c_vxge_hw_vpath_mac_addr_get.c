
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
typedef int u32 ;
struct __vxge_hw_vpath_handle {int dummy; } ;
typedef enum vxge_hw_status { ____Placeholder_vxge_hw_status } vxge_hw_status ;


 int ETH_ALEN ;
 int VXGE_HW_ERR_INVALID_HANDLE ;
 int VXGE_HW_OK ;
 int VXGE_HW_RTS_ACCESS_STEER_CTRL_ACTION_LIST_FIRST_ENTRY ;
 int VXGE_HW_RTS_ACCESS_STEER_CTRL_DATA_STRUCT_SEL_DA ;
 int VXGE_HW_RTS_ACCESS_STEER_DATA0_GET_DA_MAC_ADDR (int) ;
 int VXGE_HW_RTS_ACCESS_STEER_DATA1_GET_DA_MAC_ADDR_MASK (int) ;
 int __vxge_hw_vpath_rts_table_get (struct __vxge_hw_vpath_handle*,int ,int ,int ,int*,int*) ;

enum vxge_hw_status
vxge_hw_vpath_mac_addr_get(
 struct __vxge_hw_vpath_handle *vp,
 u8 (macaddr)[ETH_ALEN],
 u8 (macaddr_mask)[ETH_ALEN])
{
 u32 i;
 u64 data1 = 0ULL;
 u64 data2 = 0ULL;
 enum vxge_hw_status status = VXGE_HW_OK;

 if (vp == ((void*)0)) {
  status = VXGE_HW_ERR_INVALID_HANDLE;
  goto exit;
 }

 status = __vxge_hw_vpath_rts_table_get(vp,
   VXGE_HW_RTS_ACCESS_STEER_CTRL_ACTION_LIST_FIRST_ENTRY,
   VXGE_HW_RTS_ACCESS_STEER_CTRL_DATA_STRUCT_SEL_DA,
   0, &data1, &data2);

 if (status != VXGE_HW_OK)
  goto exit;

 data1 = VXGE_HW_RTS_ACCESS_STEER_DATA0_GET_DA_MAC_ADDR(data1);

 data2 = VXGE_HW_RTS_ACCESS_STEER_DATA1_GET_DA_MAC_ADDR_MASK(data2);

 for (i = ETH_ALEN; i > 0; i--) {
  macaddr[i-1] = (u8)(data1 & 0xFF);
  data1 >>= 8;

  macaddr_mask[i-1] = (u8)(data2 & 0xFF);
  data2 >>= 8;
 }
exit:
 return status;
}
