
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfp_qdisc {int num_children; int use_cnt; } ;
struct nfp_abm_link {struct nfp_qdisc* root_qdisc; } ;
struct net_device {int dummy; } ;


 struct nfp_qdisc* nfp_abm_qdisc_find (struct nfp_abm_link*,int ) ;
 int nfp_abm_qdisc_free (struct net_device*,struct nfp_abm_link*,struct nfp_qdisc*) ;
 int nfp_abm_qdisc_offload_update (struct nfp_abm_link*) ;
 int nfp_abm_qdisc_unlink_children (struct nfp_qdisc*,int ,int ) ;

__attribute__((used)) static void
nfp_abm_qdisc_destroy(struct net_device *netdev, struct nfp_abm_link *alink,
        u32 handle)
{
 struct nfp_qdisc *qdisc;

 qdisc = nfp_abm_qdisc_find(alink, handle);
 if (!qdisc)
  return;


 if (alink->root_qdisc == qdisc)
  qdisc->use_cnt--;

 nfp_abm_qdisc_unlink_children(qdisc, 0, qdisc->num_children);
 nfp_abm_qdisc_free(netdev, alink, qdisc);

 if (alink->root_qdisc == qdisc) {
  alink->root_qdisc = ((void*)0);



  nfp_abm_qdisc_offload_update(alink);
 }
}
