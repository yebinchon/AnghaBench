
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct nfp_abm_link {unsigned int queue_base; TYPE_1__* abm; int vnic; } ;
struct TYPE_2__ {int q_stats; } ;


 scalar_t__ NFP_NET_CFG_RXR_STATS (unsigned int) ;
 int NFP_Q_STAT_STRIDE ;
 int nfp_abm_ctrl_stat (struct nfp_abm_link*,int ,int ,unsigned int,unsigned int,unsigned int,int,scalar_t__*) ;
 int nfp_abm_has_prio (TYPE_1__*) ;
 scalar_t__ nn_readq (int ,scalar_t__) ;

__attribute__((used)) static int
nfp_abm_ctrl_stat_basic(struct nfp_abm_link *alink, unsigned int band,
   unsigned int queue, unsigned int off, u64 *val)
{
 if (!nfp_abm_has_prio(alink->abm)) {
  if (!band) {
   unsigned int id = alink->queue_base + queue;

   *val = nn_readq(alink->vnic,
     NFP_NET_CFG_RXR_STATS(id) + off);
  } else {
   *val = 0;
  }

  return 0;
 } else {
  return nfp_abm_ctrl_stat(alink, alink->abm->q_stats,
      NFP_Q_STAT_STRIDE, off, band, queue,
      1, val);
 }
}
