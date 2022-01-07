
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ num_rates; } ;
struct TYPE_3__ {scalar_t__ num_rates; } ;
struct wmi_peer_assoc_complete_arg {int peer_mpdu_density; TYPE_2__ peer_ht_rates; TYPE_1__ peer_legacy_rates; } ;


 int EINVAL ;
 scalar_t__ MAX_SUPPORTED_RATES ;

__attribute__((used)) static int
ath10k_wmi_peer_assoc_check_arg(const struct wmi_peer_assoc_complete_arg *arg)
{
 if (arg->peer_mpdu_density > 16)
  return -EINVAL;
 if (arg->peer_legacy_rates.num_rates > MAX_SUPPORTED_RATES)
  return -EINVAL;
 if (arg->peer_ht_rates.num_rates > MAX_SUPPORTED_RATES)
  return -EINVAL;

 return 0;
}
