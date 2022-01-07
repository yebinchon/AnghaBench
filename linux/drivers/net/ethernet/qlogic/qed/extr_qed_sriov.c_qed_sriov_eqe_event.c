
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int msg_addr; } ;
union event_ring_data {int malicious_vf; TYPE_1__ vf_pf_channel; } ;
typedef int u8 ;
struct qed_hwfn {int cdev; } ;
typedef int __le16 ;




 int DP_INFO (int ,char*,int) ;
 int EINVAL ;
 int le16_to_cpu (int ) ;
 int qed_sriov_vfpf_malicious (struct qed_hwfn*,int *) ;
 int qed_sriov_vfpf_msg (struct qed_hwfn*,int ,int *) ;

__attribute__((used)) static int qed_sriov_eqe_event(struct qed_hwfn *p_hwfn,
          u8 opcode,
          __le16 echo,
          union event_ring_data *data, u8 fw_return_code)
{
 switch (opcode) {
 case 128:
  return qed_sriov_vfpf_msg(p_hwfn, le16_to_cpu(echo),
       &data->vf_pf_channel.msg_addr);
 case 129:
  qed_sriov_vfpf_malicious(p_hwfn, &data->malicious_vf);
  return 0;
 default:
  DP_INFO(p_hwfn->cdev, "Unknown sriov eqe event 0x%02x\n",
   opcode);
  return -EINVAL;
 }
}
