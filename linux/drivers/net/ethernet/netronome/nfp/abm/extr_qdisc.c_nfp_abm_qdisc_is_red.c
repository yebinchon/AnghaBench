
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_qdisc {scalar_t__ type; } ;


 scalar_t__ NFP_QDISC_GRED ;
 scalar_t__ NFP_QDISC_RED ;

__attribute__((used)) static bool nfp_abm_qdisc_is_red(struct nfp_qdisc *qdisc)
{
 return qdisc->type == NFP_QDISC_RED || qdisc->type == NFP_QDISC_GRED;
}
