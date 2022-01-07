
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int queue; int child_handle; } ;
struct tc_mq_qopt_offload {int command; TYPE_1__ graft_params; int handle; int stats; } ;
struct nfp_abm_link {int dummy; } ;
struct net_device {int dummy; } ;


 int EOPNOTSUPP ;




 int nfp_abm_mq_create (struct net_device*,struct nfp_abm_link*,struct tc_mq_qopt_offload*) ;
 int nfp_abm_mq_stats (struct nfp_abm_link*,int ,int *) ;
 int nfp_abm_qdisc_destroy (struct net_device*,struct nfp_abm_link*,int ) ;
 int nfp_abm_qdisc_graft (struct nfp_abm_link*,int ,int ,int ) ;

int nfp_abm_setup_tc_mq(struct net_device *netdev, struct nfp_abm_link *alink,
   struct tc_mq_qopt_offload *opt)
{
 switch (opt->command) {
 case 131:
  return nfp_abm_mq_create(netdev, alink, opt);
 case 130:
  nfp_abm_qdisc_destroy(netdev, alink, opt->handle);
  return 0;
 case 128:
  return nfp_abm_mq_stats(alink, opt->handle, &opt->stats);
 case 129:
  return nfp_abm_qdisc_graft(alink, opt->handle,
        opt->graft_params.child_handle,
        opt->graft_params.queue);
 default:
  return -EOPNOTSUPP;
 }
}
