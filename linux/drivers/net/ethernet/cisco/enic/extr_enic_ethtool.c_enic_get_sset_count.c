
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int EOPNOTSUPP ;

 int enic_n_gen_stats ;
 int enic_n_rx_stats ;
 int enic_n_tx_stats ;

__attribute__((used)) static int enic_get_sset_count(struct net_device *netdev, int sset)
{
 switch (sset) {
 case 128:
  return enic_n_tx_stats + enic_n_rx_stats + enic_n_gen_stats;
 default:
  return -EOPNOTSUPP;
 }
}
