
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_red_qopt_offload {int command; int child_handle; int handle; int stats; } ;
struct nfp_abm_link {int dummy; } ;
struct net_device {int dummy; } ;


 int EOPNOTSUPP ;





 int nfp_abm_qdisc_destroy (struct net_device*,struct nfp_abm_link*,int ) ;
 int nfp_abm_qdisc_graft (struct nfp_abm_link*,int ,int ,int ) ;
 int nfp_abm_red_replace (struct net_device*,struct nfp_abm_link*,struct tc_red_qopt_offload*) ;
 int nfp_abm_red_stats (struct nfp_abm_link*,int ,int *) ;
 int nfp_abm_red_xstats (struct nfp_abm_link*,struct tc_red_qopt_offload*) ;

int nfp_abm_setup_tc_red(struct net_device *netdev, struct nfp_abm_link *alink,
    struct tc_red_qopt_offload *opt)
{
 switch (opt->command) {
 case 130:
  return nfp_abm_red_replace(netdev, alink, opt);
 case 132:
  nfp_abm_qdisc_destroy(netdev, alink, opt->handle);
  return 0;
 case 129:
  return nfp_abm_red_stats(alink, opt->handle, &opt->stats);
 case 128:
  return nfp_abm_red_xstats(alink, opt);
 case 131:
  return nfp_abm_qdisc_graft(alink, opt->handle,
        opt->child_handle, 0);
 default:
  return -EOPNOTSUPP;
 }
}
