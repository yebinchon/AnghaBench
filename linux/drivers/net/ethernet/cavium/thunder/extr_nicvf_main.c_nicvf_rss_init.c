
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nicvf_rss_info {int enable; int cfg; int rss_size; int * ind_tbl; scalar_t__ hash_bits; int key; } ;
struct nicvf {int rx_queues; struct nicvf_rss_info rss_info; } ;


 scalar_t__ CPI_ALG_NONE ;
 int NIC_VNIC_RSS_CFG ;
 int RSS_HASH_KEY_SIZE ;
 int RSS_IP_HASH_ENA ;
 int RSS_TCP_HASH_ENA ;
 int RSS_UDP_HASH_ENA ;
 scalar_t__ cpi_alg ;
 int ethtool_rxfh_indir_default (int,int ) ;
 scalar_t__ ilog2 (int ) ;
 int netdev_rss_key_fill (int ,int) ;
 int nicvf_config_rss (struct nicvf*) ;
 int nicvf_get_rss_size (struct nicvf*) ;
 int nicvf_reg_write (struct nicvf*,int ,int) ;
 int nicvf_set_rss_key (struct nicvf*) ;
 int rounddown_pow_of_two (int) ;

__attribute__((used)) static int nicvf_rss_init(struct nicvf *nic)
{
 struct nicvf_rss_info *rss = &nic->rss_info;
 int idx;

 nicvf_get_rss_size(nic);

 if (cpi_alg != CPI_ALG_NONE) {
  rss->enable = 0;
  rss->hash_bits = 0;
  return 0;
 }

 rss->enable = 1;

 netdev_rss_key_fill(rss->key, RSS_HASH_KEY_SIZE * sizeof(u64));
 nicvf_set_rss_key(nic);

 rss->cfg = RSS_IP_HASH_ENA | RSS_TCP_HASH_ENA | RSS_UDP_HASH_ENA;
 nicvf_reg_write(nic, NIC_VNIC_RSS_CFG, rss->cfg);

 rss->hash_bits = ilog2(rounddown_pow_of_two(rss->rss_size));

 for (idx = 0; idx < rss->rss_size; idx++)
  rss->ind_tbl[idx] = ethtool_rxfh_indir_default(idx,
              nic->rx_queues);
 nicvf_config_rss(nic);
 return 1;
}
