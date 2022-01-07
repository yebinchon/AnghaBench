
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct cpsw_common {int rx_ch_num; int tx_ch_num; } ;


 int CPSW_STATS_CH_LEN ;
 int CPSW_STATS_COMMON_LEN ;
 int EOPNOTSUPP ;

 struct cpsw_common* ndev_to_cpsw (struct net_device*) ;

int cpsw_get_sset_count(struct net_device *ndev, int sset)
{
 struct cpsw_common *cpsw = ndev_to_cpsw(ndev);

 switch (sset) {
 case 128:
  return (CPSW_STATS_COMMON_LEN +
         (cpsw->rx_ch_num + cpsw->tx_ch_num) *
         CPSW_STATS_CH_LEN);
 default:
  return -EOPNOTSUPP;
 }
}
