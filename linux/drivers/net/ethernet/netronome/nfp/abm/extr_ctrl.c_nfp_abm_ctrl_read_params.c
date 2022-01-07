
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_abm_link {TYPE_1__* vnic; int queue_base; } ;
struct TYPE_2__ {int stride_rx; } ;


 int NFP_NET_CFG_START_RXQ ;
 int nfp_abm_ctrl_prio_check_params (struct nfp_abm_link*) ;
 int nn_readl (TYPE_1__*,int ) ;

int nfp_abm_ctrl_read_params(struct nfp_abm_link *alink)
{
 alink->queue_base = nn_readl(alink->vnic, NFP_NET_CFG_START_RXQ);
 alink->queue_base /= alink->vnic->stride_rx;

 return nfp_abm_ctrl_prio_check_params(alink);
}
