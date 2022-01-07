
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_gred_qopt_offload {int command; int stats; int handle; } ;
struct nfp_abm_link {int dummy; } ;
struct net_device {int dummy; } ;


 int EOPNOTSUPP ;



 int nfp_abm_gred_replace (struct net_device*,struct nfp_abm_link*,struct tc_gred_qopt_offload*) ;
 int nfp_abm_gred_stats (struct nfp_abm_link*,int ,int *) ;
 int nfp_abm_qdisc_destroy (struct net_device*,struct nfp_abm_link*,int ) ;

int nfp_abm_setup_tc_gred(struct net_device *netdev, struct nfp_abm_link *alink,
     struct tc_gred_qopt_offload *opt)
{
 switch (opt->command) {
 case 129:
  return nfp_abm_gred_replace(netdev, alink, opt);
 case 130:
  nfp_abm_qdisc_destroy(netdev, alink, opt->handle);
  return 0;
 case 128:
  return nfp_abm_gred_stats(alink, opt->handle, &opt->stats);
 default:
  return -EOPNOTSUPP;
 }
}
