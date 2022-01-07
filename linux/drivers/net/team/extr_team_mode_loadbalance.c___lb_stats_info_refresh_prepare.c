
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lb_stats_info {int stats; int last_stats; } ;
struct lb_stats {int dummy; } ;


 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void __lb_stats_info_refresh_prepare(struct lb_stats_info *s_info)
{
 memcpy(&s_info->last_stats, &s_info->stats, sizeof(struct lb_stats));
 memset(&s_info->stats, 0, sizeof(struct lb_stats));
}
