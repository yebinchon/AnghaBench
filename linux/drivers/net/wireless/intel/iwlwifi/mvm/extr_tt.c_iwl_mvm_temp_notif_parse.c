
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_mvm {int dummy; } ;
struct iwl_dts_measurement_notif_v1 {int temp; } ;


 int EINVAL ;
 int IWL_DEBUG_TEMP (struct iwl_mvm*,char*,int) ;
 int IWL_ERR (struct iwl_mvm*,char*) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int iwl_rx_packet_payload_len (struct iwl_rx_packet*) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int iwl_mvm_temp_notif_parse(struct iwl_mvm *mvm,
        struct iwl_rx_packet *pkt)
{
 struct iwl_dts_measurement_notif_v1 *notif_v1;
 int len = iwl_rx_packet_payload_len(pkt);
 int temp;




 if (WARN_ON_ONCE(len < sizeof(*notif_v1))) {
  IWL_ERR(mvm, "Invalid DTS_MEASUREMENT_NOTIFICATION\n");
  return -EINVAL;
 }

 notif_v1 = (void *)pkt->data;

 temp = le32_to_cpu(notif_v1->temp);


 if (WARN_ON_ONCE(temp < 0))
  temp = 0;

 IWL_DEBUG_TEMP(mvm, "DTS_MEASUREMENT_NOTIFICATION - %d\n", temp);

 return temp;
}
