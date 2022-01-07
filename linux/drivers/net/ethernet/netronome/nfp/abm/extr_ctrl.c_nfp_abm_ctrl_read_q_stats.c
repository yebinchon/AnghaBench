
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_alink_stats {int overlimits; int drops; int backlog_pkts; int backlog_bytes; int tx_bytes; int tx_pkts; } ;
struct nfp_abm_link {TYPE_1__* abm; } ;
struct TYPE_2__ {int qm_stats; int q_lvls; } ;


 int NFP_QLVL_BLOG_BYTES ;
 int NFP_QLVL_BLOG_PKTS ;
 int NFP_QLVL_STRIDE ;
 int NFP_QMSTAT_DROP ;
 int NFP_QMSTAT_ECN ;
 int NFP_QMSTAT_STRIDE ;
 int NFP_Q_STAT_BYTES ;
 int NFP_Q_STAT_PKTS ;
 int nfp_abm_ctrl_stat (struct nfp_abm_link*,int ,int ,int ,unsigned int,unsigned int,int,int *) ;
 int nfp_abm_ctrl_stat_basic (struct nfp_abm_link*,unsigned int,unsigned int,int ,int *) ;

int nfp_abm_ctrl_read_q_stats(struct nfp_abm_link *alink, unsigned int band,
         unsigned int queue, struct nfp_alink_stats *stats)
{
 int err;

 err = nfp_abm_ctrl_stat_basic(alink, band, queue, NFP_Q_STAT_PKTS,
          &stats->tx_pkts);
 if (err)
  return err;

 err = nfp_abm_ctrl_stat_basic(alink, band, queue, NFP_Q_STAT_BYTES,
          &stats->tx_bytes);
 if (err)
  return err;

 err = nfp_abm_ctrl_stat(alink, alink->abm->q_lvls, NFP_QLVL_STRIDE,
    NFP_QLVL_BLOG_BYTES, band, queue, 0,
    &stats->backlog_bytes);
 if (err)
  return err;

 err = nfp_abm_ctrl_stat(alink, alink->abm->q_lvls,
    NFP_QLVL_STRIDE, NFP_QLVL_BLOG_PKTS,
    band, queue, 0, &stats->backlog_pkts);
 if (err)
  return err;

 err = nfp_abm_ctrl_stat(alink, alink->abm->qm_stats,
    NFP_QMSTAT_STRIDE, NFP_QMSTAT_DROP,
    band, queue, 1, &stats->drops);
 if (err)
  return err;

 return nfp_abm_ctrl_stat(alink, alink->abm->qm_stats,
     NFP_QMSTAT_STRIDE, NFP_QMSTAT_ECN,
     band, queue, 1, &stats->overlimits);
}
