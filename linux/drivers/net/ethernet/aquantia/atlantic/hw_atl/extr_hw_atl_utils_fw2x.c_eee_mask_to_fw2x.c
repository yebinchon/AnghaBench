
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int AQ_NIC_RATE_EEE_10G ;
 int AQ_NIC_RATE_EEE_1G ;
 int AQ_NIC_RATE_EEE_2GS ;
 int AQ_NIC_RATE_EEE_5G ;
 int HW_ATL_FW2X_CAP_EEE_10G_MASK ;
 int HW_ATL_FW2X_CAP_EEE_1G_MASK ;
 int HW_ATL_FW2X_CAP_EEE_2G5_MASK ;
 int HW_ATL_FW2X_CAP_EEE_5G_MASK ;

__attribute__((used)) static u32 eee_mask_to_fw2x(u32 speed)
{
 u32 rate = 0;

 if (speed & AQ_NIC_RATE_EEE_10G)
  rate |= HW_ATL_FW2X_CAP_EEE_10G_MASK;
 if (speed & AQ_NIC_RATE_EEE_5G)
  rate |= HW_ATL_FW2X_CAP_EEE_5G_MASK;
 if (speed & AQ_NIC_RATE_EEE_2GS)
  rate |= HW_ATL_FW2X_CAP_EEE_2G5_MASK;
 if (speed & AQ_NIC_RATE_EEE_1G)
  rate |= HW_ATL_FW2X_CAP_EEE_1G_MASK;

 return rate;
}
