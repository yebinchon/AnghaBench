
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct nfp_abm_link {TYPE_1__* abm; } ;
struct TYPE_2__ {unsigned int num_bands; int qm_stats; } ;


 int NFP_QMSTAT_STO ;
 int NFP_QMSTAT_STRIDE ;
 scalar_t__ nfp_abm_ctrl_stat (struct nfp_abm_link*,int ,int ,int ,unsigned int,unsigned int,int,scalar_t__*) ;

u64 nfp_abm_ctrl_stat_sto(struct nfp_abm_link *alink, unsigned int queue)
{
 unsigned int band;
 u64 val, sum = 0;

 for (band = 0; band < alink->abm->num_bands; band++) {
  if (nfp_abm_ctrl_stat(alink, alink->abm->qm_stats,
          NFP_QMSTAT_STRIDE, NFP_QMSTAT_STO,
          band, queue, 1, &val))
   return 0;
  sum += val;
 }

 return sum;
}
