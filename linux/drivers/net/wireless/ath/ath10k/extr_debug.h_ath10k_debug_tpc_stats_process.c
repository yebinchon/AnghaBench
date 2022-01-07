
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_tpc_stats {int dummy; } ;
struct ath10k {int dummy; } ;


 int kfree (struct ath10k_tpc_stats*) ;

__attribute__((used)) static inline void ath10k_debug_tpc_stats_process(struct ath10k *ar,
        struct ath10k_tpc_stats *tpc_stats)
{
 kfree(tpc_stats);
}
