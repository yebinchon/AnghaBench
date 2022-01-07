
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_qdisc {struct nfp_qdisc* children; int handle; } ;
struct nfp_port {int tc_offload_cnt; } ;
struct nfp_abm_link {int qdiscs; } ;
struct net_device {int dummy; } ;


 int TC_H_MAJ (int ) ;
 int WARN_ON (int) ;
 int kfree (struct nfp_qdisc*) ;
 int nfp_abm_qdisc_clear_mq (struct net_device*,struct nfp_abm_link*,struct nfp_qdisc*) ;
 struct nfp_port* nfp_port_from_netdev (struct net_device*) ;
 struct nfp_qdisc* radix_tree_delete (int *,int ) ;

__attribute__((used)) static void
nfp_abm_qdisc_free(struct net_device *netdev, struct nfp_abm_link *alink,
     struct nfp_qdisc *qdisc)
{
 struct nfp_port *port = nfp_port_from_netdev(netdev);

 if (!qdisc)
  return;
 nfp_abm_qdisc_clear_mq(netdev, alink, qdisc);
 WARN_ON(radix_tree_delete(&alink->qdiscs,
      TC_H_MAJ(qdisc->handle)) != qdisc);

 kfree(qdisc->children);
 kfree(qdisc);

 port->tc_offload_cnt--;
}
