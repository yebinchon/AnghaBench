
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wmi_peer_assoc_complete_arg {int dummy; } ;
struct wmi_10_2_peer_assoc_complete_cmd {int info0; } ;
struct ath10k {int dummy; } ;


 int SM (int,int ) ;
 int WMI_PEER_ASSOC_INFO0_MAX_MCS_IDX ;
 int WMI_PEER_ASSOC_INFO0_MAX_NSS ;
 int __cpu_to_le32 (int) ;
 int ath10k_wmi_peer_assoc_fill (struct ath10k*,void*,struct wmi_peer_assoc_complete_arg const*) ;

__attribute__((used)) static void
ath10k_wmi_peer_assoc_fill_10_2(struct ath10k *ar, void *buf,
    const struct wmi_peer_assoc_complete_arg *arg)
{
 struct wmi_10_2_peer_assoc_complete_cmd *cmd = buf;
 int max_mcs, max_nss;
 u32 info0;


 max_mcs = 0xf;
 max_nss = 0xf;

 info0 = SM(max_mcs, WMI_PEER_ASSOC_INFO0_MAX_MCS_IDX) |
  SM(max_nss, WMI_PEER_ASSOC_INFO0_MAX_NSS);

 ath10k_wmi_peer_assoc_fill(ar, buf, arg);
 cmd->info0 = __cpu_to_le32(info0);
}
