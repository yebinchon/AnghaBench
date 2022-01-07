
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * svc_map; } ;
struct ath10k {TYPE_1__ wmi; int dev_flags; } ;


 int ATH10K_FLAG_PEER_STATS ;
 int WMI_SERVICE_PEER_STATS ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline bool ath10k_peer_stats_enabled(struct ath10k *ar)
{
 if (test_bit(ATH10K_FLAG_PEER_STATS, &ar->dev_flags) &&
     test_bit(WMI_SERVICE_PEER_STATS, ar->wmi.svc_map))
  return 1;

 return 0;
}
