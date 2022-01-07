
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_ccm {int replies; } ;


 int WARN_ON (int) ;
 int skb_queue_empty (int *) ;

void nfp_ccm_clean(struct nfp_ccm *ccm)
{
 WARN_ON(!skb_queue_empty(&ccm->replies));
}
