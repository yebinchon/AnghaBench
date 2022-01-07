
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmballoon {TYPE_1__* stats; } ;
typedef enum vmballoon_stat_page { ____Placeholder_vmballoon_stat_page } vmballoon_stat_page ;
typedef enum vmballoon_page_size_type { ____Placeholder_vmballoon_page_size_type } vmballoon_page_size_type ;
struct TYPE_2__ {int ** page_stat; } ;


 int atomic64_add (unsigned int,int *) ;
 scalar_t__ is_vmballoon_stats_on () ;

__attribute__((used)) static inline void vmballoon_stats_page_add(struct vmballoon *b,
         enum vmballoon_stat_page stat,
         enum vmballoon_page_size_type size,
         unsigned int val)
{
 if (is_vmballoon_stats_on())
  atomic64_add(val, &b->stats->page_stat[stat][size]);
}
