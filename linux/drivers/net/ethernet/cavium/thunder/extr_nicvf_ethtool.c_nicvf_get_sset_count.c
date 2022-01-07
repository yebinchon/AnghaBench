
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nicvf {int sqs_count; TYPE_1__* qs; struct nicvf** snicvf; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int rq_cnt; int sq_cnt; } ;


 int BGX_RX_STATS_COUNT ;
 int BGX_TX_STATS_COUNT ;
 int EINVAL ;
 int ETH_SS_STATS ;
 struct nicvf* netdev_priv (struct net_device*) ;
 int nicvf_n_drv_stats ;
 int nicvf_n_hw_stats ;
 int nicvf_n_queue_stats ;

__attribute__((used)) static int nicvf_get_sset_count(struct net_device *netdev, int sset)
{
 struct nicvf *nic = netdev_priv(netdev);
 int qstats_count;
 int sqs;

 if (sset != ETH_SS_STATS)
  return -EINVAL;

 qstats_count = nicvf_n_queue_stats *
         (nic->qs->rq_cnt + nic->qs->sq_cnt);
 for (sqs = 0; sqs < nic->sqs_count; sqs++) {
  struct nicvf *snic;

  snic = nic->snicvf[sqs];
  if (!snic)
   continue;
  qstats_count += nicvf_n_queue_stats *
    (snic->qs->rq_cnt + snic->qs->sq_cnt);
 }

 return nicvf_n_hw_stats + nicvf_n_drv_stats +
  qstats_count +
  BGX_RX_STATS_COUNT + BGX_TX_STATS_COUNT;
}
