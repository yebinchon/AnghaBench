
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int min; int is_ecn; scalar_t__ limit; } ;
struct tc_red_qopt_offload {TYPE_3__ set; int handle; int parent; } ;
struct TYPE_6__ {int num_bands; TYPE_1__* band; } ;
struct nfp_qdisc {int use_cnt; TYPE_2__ red; scalar_t__ params_ok; TYPE_4__** children; } ;
struct nfp_abm_link {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_8__ {int use_cnt; } ;
struct TYPE_5__ {int threshold; int ecn; } ;


 int NFP_QDISC_RED ;
 TYPE_4__* NFP_QDISC_UNTRACKED ;
 scalar_t__ nfp_abm_qdisc_child_valid (struct nfp_qdisc*,int ) ;
 int nfp_abm_qdisc_offload_update (struct nfp_abm_link*) ;
 int nfp_abm_qdisc_replace (struct net_device*,struct nfp_abm_link*,int ,int ,int ,int,struct nfp_qdisc**) ;
 scalar_t__ nfp_abm_red_check_params (struct nfp_abm_link*,struct tc_red_qopt_offload*) ;

__attribute__((used)) static int
nfp_abm_red_replace(struct net_device *netdev, struct nfp_abm_link *alink,
      struct tc_red_qopt_offload *opt)
{
 struct nfp_qdisc *qdisc;
 int ret;

 ret = nfp_abm_qdisc_replace(netdev, alink, NFP_QDISC_RED, opt->parent,
        opt->handle, 1, &qdisc);
 if (ret < 0)
  return ret;


 if (opt->set.limit) {
  if (nfp_abm_qdisc_child_valid(qdisc, 0))
   qdisc->children[0]->use_cnt--;
  qdisc->children[0] = ((void*)0);
 } else {



  if (!ret)
   qdisc->children[0] = NFP_QDISC_UNTRACKED;
 }

 qdisc->params_ok = nfp_abm_red_check_params(alink, opt);
 if (qdisc->params_ok) {
  qdisc->red.num_bands = 1;
  qdisc->red.band[0].ecn = opt->set.is_ecn;
  qdisc->red.band[0].threshold = opt->set.min;
 }

 if (qdisc->use_cnt == 1)
  nfp_abm_qdisc_offload_update(alink);

 return 0;
}
