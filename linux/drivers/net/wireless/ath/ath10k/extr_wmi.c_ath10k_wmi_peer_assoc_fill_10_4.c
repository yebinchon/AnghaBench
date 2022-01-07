
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_peer_assoc_complete_arg {int peer_bw_rxnss_override; } ;
struct wmi_10_4_peer_assoc_complete_cmd {scalar_t__ peer_bw_rxnss_override; } ;
struct ath10k {int dummy; } ;


 int BIT (int ) ;
 int PEER_BW_RXNSS_OVERRIDE_OFFSET ;
 scalar_t__ __cpu_to_le32 (int) ;
 int ath10k_wmi_peer_assoc_fill_10_2 (struct ath10k*,void*,struct wmi_peer_assoc_complete_arg const*) ;

__attribute__((used)) static void
ath10k_wmi_peer_assoc_fill_10_4(struct ath10k *ar, void *buf,
    const struct wmi_peer_assoc_complete_arg *arg)
{
 struct wmi_10_4_peer_assoc_complete_cmd *cmd = buf;

 ath10k_wmi_peer_assoc_fill_10_2(ar, buf, arg);
 if (arg->peer_bw_rxnss_override)
  cmd->peer_bw_rxnss_override =
   __cpu_to_le32((arg->peer_bw_rxnss_override - 1) |
          BIT(PEER_BW_RXNSS_OVERRIDE_OFFSET));
 else
  cmd->peer_bw_rxnss_override = 0;
}
