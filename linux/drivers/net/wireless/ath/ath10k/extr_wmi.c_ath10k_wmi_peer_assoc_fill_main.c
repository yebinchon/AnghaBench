
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_peer_assoc_complete_arg {int dummy; } ;
struct wmi_main_peer_assoc_complete_cmd {int peer_ht_info; } ;
struct ath10k {int dummy; } ;


 int ath10k_wmi_peer_assoc_fill (struct ath10k*,void*,struct wmi_peer_assoc_complete_arg const*) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void
ath10k_wmi_peer_assoc_fill_main(struct ath10k *ar, void *buf,
    const struct wmi_peer_assoc_complete_arg *arg)
{
 struct wmi_main_peer_assoc_complete_cmd *cmd = buf;

 ath10k_wmi_peer_assoc_fill(ar, buf, arg);
 memset(cmd->peer_ht_info, 0, sizeof(cmd->peer_ht_info));
}
