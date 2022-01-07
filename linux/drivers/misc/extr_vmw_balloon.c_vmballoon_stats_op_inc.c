
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmballoon {TYPE_1__* stats; } ;
typedef enum vmballoon_op_stat_type { ____Placeholder_vmballoon_op_stat_type } vmballoon_op_stat_type ;
struct TYPE_2__ {int ** ops; } ;


 int atomic64_inc (int *) ;
 scalar_t__ is_vmballoon_stats_on () ;

__attribute__((used)) static inline void vmballoon_stats_op_inc(struct vmballoon *b, unsigned int op,
       enum vmballoon_op_stat_type type)
{
 if (is_vmballoon_stats_on())
  atomic64_inc(&b->stats->ops[op][type]);
}
