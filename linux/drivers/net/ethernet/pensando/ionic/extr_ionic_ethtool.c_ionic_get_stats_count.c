
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ionic_lif {int dummy; } ;
struct TYPE_2__ {scalar_t__ (* get_count ) (struct ionic_lif*) ;} ;


 int ionic_num_stats_grps ;
 TYPE_1__* ionic_stats_groups ;
 scalar_t__ stub1 (struct ionic_lif*) ;

__attribute__((used)) static int ionic_get_stats_count(struct ionic_lif *lif)
{
 int i, num_stats = 0;

 for (i = 0; i < ionic_num_stats_grps; i++)
  num_stats += ionic_stats_groups[i].get_count(lif);

 return num_stats;
}
