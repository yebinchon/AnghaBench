
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef unsigned int u32 ;
struct net_device {int dummy; } ;
struct aq_nic_s {int aq_hw; TYPE_1__* aq_hw_ops; } ;
struct TYPE_5__ {unsigned int indirection_table_size; unsigned int* indirection_table; int hash_secret_key; } ;
struct aq_nic_cfg_s {TYPE_2__ aq_rss; } ;
struct TYPE_4__ {int (* hw_rss_hash_set ) (int ,TYPE_2__*) ;int (* hw_rss_set ) (int ,TYPE_2__*) ;} ;


 int EOPNOTSUPP ;
 scalar_t__ const ETH_RSS_HASH_NO_CHANGE ;
 scalar_t__ const ETH_RSS_HASH_TOP ;
 struct aq_nic_cfg_s* aq_nic_get_cfg (struct aq_nic_s*) ;
 int memcpy (int ,scalar_t__ const*,int) ;
 struct aq_nic_s* netdev_priv (struct net_device*) ;
 int stub1 (int ,TYPE_2__*) ;
 int stub2 (int ,TYPE_2__*) ;

__attribute__((used)) static int aq_ethtool_set_rss(struct net_device *netdev, const u32 *indir,
         const u8 *key, const u8 hfunc)
{
 struct aq_nic_s *aq_nic = netdev_priv(netdev);
 struct aq_nic_cfg_s *cfg;
 unsigned int i = 0U;
 u32 rss_entries;
 int err = 0;

 cfg = aq_nic_get_cfg(aq_nic);
 rss_entries = cfg->aq_rss.indirection_table_size;


 if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
  return -EOPNOTSUPP;

 if (indir)
  for (i = 0; i < rss_entries; i++)
   cfg->aq_rss.indirection_table[i] = indir[i];


 if (key) {
  memcpy(cfg->aq_rss.hash_secret_key, key,
         sizeof(cfg->aq_rss.hash_secret_key));
  err = aq_nic->aq_hw_ops->hw_rss_hash_set(aq_nic->aq_hw,
   &cfg->aq_rss);
  if (err)
   return err;
 }

 err = aq_nic->aq_hw_ops->hw_rss_set(aq_nic->aq_hw, &cfg->aq_rss);

 return err;
}
