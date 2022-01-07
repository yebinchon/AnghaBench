
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct bnxt_vnic_info {scalar_t__ rss_hash_key; int * rss_table; } ;
struct bnxt {struct bnxt_vnic_info* vnic_info; } ;


 int ETH_RSS_HASH_TOP ;
 int HW_HASH_INDEX_SIZE ;
 int HW_HASH_KEY_SIZE ;
 int le16_to_cpu (int ) ;
 int memcpy (int *,scalar_t__,int ) ;
 struct bnxt* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bnxt_get_rxfh(struct net_device *dev, u32 *indir, u8 *key,
    u8 *hfunc)
{
 struct bnxt *bp = netdev_priv(dev);
 struct bnxt_vnic_info *vnic;
 int i = 0;

 if (hfunc)
  *hfunc = ETH_RSS_HASH_TOP;

 if (!bp->vnic_info)
  return 0;

 vnic = &bp->vnic_info[0];
 if (indir && vnic->rss_table) {
  for (i = 0; i < HW_HASH_INDEX_SIZE; i++)
   indir[i] = le16_to_cpu(vnic->rss_table[i]);
 }

 if (key && vnic->rss_hash_key)
  memcpy(key, vnic->rss_hash_key, HW_HASH_KEY_SIZE);

 return 0;
}
