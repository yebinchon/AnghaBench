
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct aq_nic_s {int dummy; } ;
struct TYPE_2__ {int hash_secret_key; int * indirection_table; } ;
struct aq_nic_cfg_s {TYPE_1__ aq_rss; } ;


 unsigned int AQ_CFG_RSS_INDIRECTION_TABLE_MAX ;
 int ETH_RSS_HASH_TOP ;
 struct aq_nic_cfg_s* aq_nic_get_cfg (struct aq_nic_s*) ;
 int memcpy (int *,int ,int) ;
 struct aq_nic_s* netdev_priv (struct net_device*) ;

__attribute__((used)) static int aq_ethtool_get_rss(struct net_device *ndev, u32 *indir, u8 *key,
         u8 *hfunc)
{
 struct aq_nic_s *aq_nic = netdev_priv(ndev);
 struct aq_nic_cfg_s *cfg = aq_nic_get_cfg(aq_nic);
 unsigned int i = 0U;

 if (hfunc)
  *hfunc = ETH_RSS_HASH_TOP;
 if (indir) {
  for (i = 0; i < AQ_CFG_RSS_INDIRECTION_TABLE_MAX; i++)
   indir[i] = cfg->aq_rss.indirection_table[i];
 }
 if (key)
  memcpy(key, cfg->aq_rss.hash_secret_key,
         sizeof(cfg->aq_rss.hash_secret_key));
 return 0;
}
