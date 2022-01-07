
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct ath10k_htc {int total_transmit_credits; } ;


 scalar_t__ ATH10K_HTC_SVC_ID_WMI_CONTROL ;

__attribute__((used)) static u8 ath10k_htc_get_credit_allocation(struct ath10k_htc *htc,
        u16 service_id)
{
 u8 allocation = 0;




 if (service_id == ATH10K_HTC_SVC_ID_WMI_CONTROL)
  allocation = htc->total_transmit_credits;

 return allocation;
}
