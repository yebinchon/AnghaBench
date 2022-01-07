
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_mq_qopt_offload {int handle; } ;
struct nfp_qdisc {int params_ok; int offloaded; } ;
struct nfp_abm_link {int total_queues; } ;
struct net_device {int dummy; } ;


 int NFP_QDISC_MQ ;
 int TC_H_ROOT ;
 int nfp_abm_qdisc_offload_update (struct nfp_abm_link*) ;
 int nfp_abm_qdisc_replace (struct net_device*,struct nfp_abm_link*,int ,int ,int ,int ,struct nfp_qdisc**) ;

__attribute__((used)) static int
nfp_abm_mq_create(struct net_device *netdev, struct nfp_abm_link *alink,
    struct tc_mq_qopt_offload *opt)
{
 struct nfp_qdisc *qdisc;
 int ret;

 ret = nfp_abm_qdisc_replace(netdev, alink, NFP_QDISC_MQ,
        TC_H_ROOT, opt->handle, alink->total_queues,
        &qdisc);
 if (ret < 0)
  return ret;

 qdisc->params_ok = 1;
 qdisc->offloaded = 1;
 nfp_abm_qdisc_offload_update(alink);
 return 0;
}
