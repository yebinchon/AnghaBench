
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct red_stats {int pdrop; int forced_mark; } ;
struct nfp_alink_xstats {scalar_t__ pdrop; scalar_t__ ecn_marked; } ;



__attribute__((used)) static void
nfp_abm_stats_red_calculate(struct nfp_alink_xstats *new,
       struct nfp_alink_xstats *old,
       struct red_stats *stats)
{
 stats->forced_mark += new->ecn_marked - old->ecn_marked;
 stats->pdrop += new->pdrop - old->pdrop;
}
