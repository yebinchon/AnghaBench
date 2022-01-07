
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int WIL_RX_EDMA_DLPF_LU_MISS_BIT ;
 int WIL_RX_EDMA_DLPF_LU_MISS_CID_TID_MASK ;
 int WIL_RX_EDMA_DLPF_LU_MISS_TID_POS ;
 int wil_rx_status_get_flow_id (void*) ;

__attribute__((used)) static inline u8 wil_rx_status_get_tid(void *msg)
{
 u16 val = wil_rx_status_get_flow_id(msg);

 if (val & WIL_RX_EDMA_DLPF_LU_MISS_BIT)

  return (val >> WIL_RX_EDMA_DLPF_LU_MISS_TID_POS) &
   WIL_RX_EDMA_DLPF_LU_MISS_CID_TID_MASK;
 else

  return val & WIL_RX_EDMA_DLPF_LU_MISS_CID_TID_MASK;
}
