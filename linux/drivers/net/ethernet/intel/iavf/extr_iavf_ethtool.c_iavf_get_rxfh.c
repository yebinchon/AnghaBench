
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef size_t u16 ;
struct net_device {int dummy; } ;
struct iavf_adapter {size_t rss_lut_size; scalar_t__* rss_lut; int rss_key_size; int rss_key; } ;


 int ETH_RSS_HASH_TOP ;
 int memcpy (int *,int ,int ) ;
 struct iavf_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int iavf_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
    u8 *hfunc)
{
 struct iavf_adapter *adapter = netdev_priv(netdev);
 u16 i;

 if (hfunc)
  *hfunc = ETH_RSS_HASH_TOP;
 if (!indir)
  return 0;

 memcpy(key, adapter->rss_key, adapter->rss_key_size);


 for (i = 0; i < adapter->rss_lut_size; i++)
  indir[i] = (u32)adapter->rss_lut[i];

 return 0;
}
