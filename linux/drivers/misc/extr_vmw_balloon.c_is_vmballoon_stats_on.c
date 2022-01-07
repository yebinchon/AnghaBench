
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_DEBUG_FS ;
 scalar_t__ IS_ENABLED (int ) ;
 int balloon_stat_enabled ;
 scalar_t__ static_branch_unlikely (int *) ;

__attribute__((used)) static inline bool is_vmballoon_stats_on(void)
{
 return IS_ENABLED(CONFIG_DEBUG_FS) &&
  static_branch_unlikely(&balloon_stat_enabled);
}
