
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_peer_assoc_complete_arg {int dummy; } ;
struct ath10k {int dummy; } ;


 int ath10k_wmi_peer_assoc_fill (struct ath10k*,void*,struct wmi_peer_assoc_complete_arg const*) ;

__attribute__((used)) static void
ath10k_wmi_peer_assoc_fill_10_1(struct ath10k *ar, void *buf,
    const struct wmi_peer_assoc_complete_arg *arg)
{
 ath10k_wmi_peer_assoc_fill(ar, buf, arg);
}
