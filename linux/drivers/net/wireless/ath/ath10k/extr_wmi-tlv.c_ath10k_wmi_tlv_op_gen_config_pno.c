
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wmi_pno_scan_req {scalar_t__ enable; } ;
struct sk_buff {int dummy; } ;
struct ath10k {int dummy; } ;


 struct sk_buff* ath10k_wmi_tlv_op_gen_config_pno_start (struct ath10k*,int ,struct wmi_pno_scan_req*) ;
 struct sk_buff* ath10k_wmi_tlv_op_gen_config_pno_stop (struct ath10k*,int ) ;

__attribute__((used)) static struct sk_buff *
ath10k_wmi_tlv_op_gen_config_pno(struct ath10k *ar, u32 vdev_id,
     struct wmi_pno_scan_req *pno_scan)
{
 if (pno_scan->enable)
  return ath10k_wmi_tlv_op_gen_config_pno_start(ar, vdev_id, pno_scan);
 else
  return ath10k_wmi_tlv_op_gen_config_pno_stop(ar, vdev_id);
}
