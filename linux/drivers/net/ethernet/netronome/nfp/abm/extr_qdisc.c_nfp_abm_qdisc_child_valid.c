
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_qdisc {scalar_t__* children; } ;


 scalar_t__ NFP_QDISC_UNTRACKED ;

__attribute__((used)) static bool nfp_abm_qdisc_child_valid(struct nfp_qdisc *qdisc, unsigned int id)
{
 return qdisc->children[id] &&
        qdisc->children[id] != NFP_QDISC_UNTRACKED;
}
