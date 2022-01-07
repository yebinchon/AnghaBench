
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_tpc_stats_final {int dummy; } ;
struct ath10k {int dummy; } ;


 int kfree (struct ath10k_tpc_stats_final*) ;

__attribute__((used)) static inline void
ath10k_debug_tpc_stats_final_process(struct ath10k *ar,
         struct ath10k_tpc_stats_final *tpc_stats)
{
 kfree(tpc_stats);
}
