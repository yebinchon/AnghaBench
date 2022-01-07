
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_qdisc {scalar_t__ type; int * children; } ;
struct nfp_abm_link {unsigned int total_queues; } ;


 scalar_t__ NFP_QDISC_MQ ;
 scalar_t__ nfp_abm_qdisc_child_valid (struct nfp_qdisc*,unsigned int) ;
 int nfp_abm_stats_update_red (struct nfp_abm_link*,int ,unsigned int) ;

__attribute__((used)) static void
nfp_abm_stats_update_mq(struct nfp_abm_link *alink, struct nfp_qdisc *qdisc)
{
 unsigned int i;

 if (qdisc->type != NFP_QDISC_MQ)
  return;

 for (i = 0; i < alink->total_queues; i++)
  if (nfp_abm_qdisc_child_valid(qdisc, i))
   nfp_abm_stats_update_red(alink, qdisc->children[i], i);
}
