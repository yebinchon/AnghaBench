
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qcom_scm_vmperm {void* perm; int vmid; } ;
struct ath10k_qmi {struct ath10k* ar; } ;
struct ath10k_msa_mem_info {int size; int addr; scalar_t__ secure; } ;
struct ath10k {int dummy; } ;


 unsigned int BIT (int ) ;
 void* QCOM_SCM_PERM_RW ;
 int QCOM_SCM_VMID_HLOS ;
 int QCOM_SCM_VMID_MSS_MSA ;
 int QCOM_SCM_VMID_WLAN ;
 int QCOM_SCM_VMID_WLAN_CE ;
 int ath10k_err (struct ath10k*,char*,int) ;
 int qcom_scm_assign_mem (int ,int ,unsigned int*,struct qcom_scm_vmperm*,int) ;

__attribute__((used)) static int ath10k_qmi_map_msa_permission(struct ath10k_qmi *qmi,
      struct ath10k_msa_mem_info *mem_info)
{
 struct qcom_scm_vmperm dst_perms[3];
 struct ath10k *ar = qmi->ar;
 unsigned int src_perms;
 u32 perm_count;
 int ret;

 src_perms = BIT(QCOM_SCM_VMID_HLOS);

 dst_perms[0].vmid = QCOM_SCM_VMID_MSS_MSA;
 dst_perms[0].perm = QCOM_SCM_PERM_RW;
 dst_perms[1].vmid = QCOM_SCM_VMID_WLAN;
 dst_perms[1].perm = QCOM_SCM_PERM_RW;

 if (mem_info->secure) {
  perm_count = 2;
 } else {
  dst_perms[2].vmid = QCOM_SCM_VMID_WLAN_CE;
  dst_perms[2].perm = QCOM_SCM_PERM_RW;
  perm_count = 3;
 }

 ret = qcom_scm_assign_mem(mem_info->addr, mem_info->size,
      &src_perms, dst_perms, perm_count);
 if (ret < 0)
  ath10k_err(ar, "failed to assign msa map permissions: %d\n", ret);

 return ret;
}
