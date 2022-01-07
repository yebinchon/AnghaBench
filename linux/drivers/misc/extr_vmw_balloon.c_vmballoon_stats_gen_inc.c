
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmballoon {TYPE_1__* stats; } ;
typedef enum vmballoon_stat_general { ____Placeholder_vmballoon_stat_general } vmballoon_stat_general ;
struct TYPE_2__ {int * general_stat; } ;


 int atomic64_inc (int *) ;
 scalar_t__ is_vmballoon_stats_on () ;

__attribute__((used)) static inline void vmballoon_stats_gen_inc(struct vmballoon *b,
        enum vmballoon_stat_general stat)
{
 if (is_vmballoon_stats_on())
  atomic64_inc(&b->stats->general_stat[stat]);
}
