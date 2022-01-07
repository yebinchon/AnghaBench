
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfp_qdisc {int dummy; } ;
struct nfp_abm_link {int qdiscs; } ;


 int TC_H_MAJ (int ) ;
 struct nfp_qdisc* radix_tree_lookup (int *,int ) ;

__attribute__((used)) static struct nfp_qdisc *
nfp_abm_qdisc_find(struct nfp_abm_link *alink, u32 handle)
{
 return radix_tree_lookup(&alink->qdiscs, TC_H_MAJ(handle));
}
