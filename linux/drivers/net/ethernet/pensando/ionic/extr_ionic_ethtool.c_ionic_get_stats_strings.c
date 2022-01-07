
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct ionic_lif {int dummy; } ;
struct TYPE_2__ {int (* get_strings ) (struct ionic_lif*,int **) ;} ;


 size_t ionic_num_stats_grps ;
 TYPE_1__* ionic_stats_groups ;
 int stub1 (struct ionic_lif*,int **) ;

__attribute__((used)) static void ionic_get_stats_strings(struct ionic_lif *lif, u8 *buf)
{
 u32 i;

 for (i = 0; i < ionic_num_stats_grps; i++)
  ionic_stats_groups[i].get_strings(lif, &buf);
}
