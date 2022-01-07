
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct qede_dev {int rss_key; int * rss_ind_table; } ;
struct net_device {int dummy; } ;


 int ETH_RSS_HASH_TOP ;
 int QED_RSS_IND_TABLE_SIZE ;
 int memcpy (int *,int ,int ) ;
 struct qede_dev* netdev_priv (struct net_device*) ;
 int qede_get_rxfh_key_size (struct net_device*) ;

__attribute__((used)) static int qede_get_rxfh(struct net_device *dev, u32 *indir, u8 *key, u8 *hfunc)
{
 struct qede_dev *edev = netdev_priv(dev);
 int i;

 if (hfunc)
  *hfunc = ETH_RSS_HASH_TOP;

 if (!indir)
  return 0;

 for (i = 0; i < QED_RSS_IND_TABLE_SIZE; i++)
  indir[i] = edev->rss_ind_table[i];

 if (key)
  memcpy(key, edev->rss_key, qede_get_rxfh_key_size(dev));

 return 0;
}
