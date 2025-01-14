
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {unsigned int dp_cnt; TYPE_3__* tab; } ;
struct tc_gred_qopt_offload {TYPE_4__ set; int handle; int parent; } ;
struct TYPE_6__ {unsigned int num_bands; TYPE_1__* band; } ;
struct nfp_qdisc {scalar_t__ use_cnt; TYPE_2__ red; scalar_t__ params_ok; } ;
struct nfp_abm_link {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_7__ {int min; int is_ecn; } ;
struct TYPE_5__ {int threshold; int ecn; } ;


 int NFP_QDISC_GRED ;
 scalar_t__ nfp_abm_gred_check_params (struct nfp_abm_link*,struct tc_gred_qopt_offload*) ;
 int nfp_abm_qdisc_offload_update (struct nfp_abm_link*) ;
 int nfp_abm_qdisc_replace (struct net_device*,struct nfp_abm_link*,int ,int ,int ,int ,struct nfp_qdisc**) ;

__attribute__((used)) static int
nfp_abm_gred_replace(struct net_device *netdev, struct nfp_abm_link *alink,
       struct tc_gred_qopt_offload *opt)
{
 struct nfp_qdisc *qdisc;
 unsigned int i;
 int ret;

 ret = nfp_abm_qdisc_replace(netdev, alink, NFP_QDISC_GRED, opt->parent,
        opt->handle, 0, &qdisc);
 if (ret < 0)
  return ret;

 qdisc->params_ok = nfp_abm_gred_check_params(alink, opt);
 if (qdisc->params_ok) {
  qdisc->red.num_bands = opt->set.dp_cnt;
  for (i = 0; i < qdisc->red.num_bands; i++) {
   qdisc->red.band[i].ecn = opt->set.tab[i].is_ecn;
   qdisc->red.band[i].threshold = opt->set.tab[i].min;
  }
 }

 if (qdisc->use_cnt)
  nfp_abm_qdisc_offload_update(alink);

 return 0;
}
