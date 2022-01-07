
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_alink_xstats {int ecn_marked; int pdrop; } ;
struct nfp_abm_link {TYPE_1__* abm; } ;
struct TYPE_2__ {int qm_stats; } ;


 int NFP_QMSTAT_DROP ;
 int NFP_QMSTAT_ECN ;
 int NFP_QMSTAT_STRIDE ;
 int nfp_abm_ctrl_stat (struct nfp_abm_link*,int ,int ,int ,unsigned int,unsigned int,int,int *) ;

int nfp_abm_ctrl_read_q_xstats(struct nfp_abm_link *alink,
          unsigned int band, unsigned int queue,
          struct nfp_alink_xstats *xstats)
{
 int err;

 err = nfp_abm_ctrl_stat(alink, alink->abm->qm_stats,
    NFP_QMSTAT_STRIDE, NFP_QMSTAT_DROP,
    band, queue, 1, &xstats->pdrop);
 if (err)
  return err;

 return nfp_abm_ctrl_stat(alink, alink->abm->qm_stats,
     NFP_QMSTAT_STRIDE, NFP_QMSTAT_ECN,
     band, queue, 1, &xstats->ecn_marked);
}
