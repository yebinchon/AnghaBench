
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct ionic_lif {int rss_hash_key; int * rss_ind_tbl; TYPE_4__* ionic; } ;
struct TYPE_5__ {int rss_ind_tbl_sz; } ;
struct TYPE_6__ {TYPE_1__ eth; } ;
struct TYPE_7__ {TYPE_2__ lif; } ;
struct TYPE_8__ {TYPE_3__ ident; } ;


 int ETH_RSS_HASH_TOP ;
 int IONIC_RSS_HASH_KEY_SIZE ;
 unsigned int le16_to_cpu (int ) ;
 int memcpy (int *,int ,int ) ;
 struct ionic_lif* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ionic_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
     u8 *hfunc)
{
 struct ionic_lif *lif = netdev_priv(netdev);
 unsigned int i, tbl_sz;

 if (indir) {
  tbl_sz = le16_to_cpu(lif->ionic->ident.lif.eth.rss_ind_tbl_sz);
  for (i = 0; i < tbl_sz; i++)
   indir[i] = lif->rss_ind_tbl[i];
 }

 if (key)
  memcpy(key, lif->rss_hash_key, IONIC_RSS_HASH_KEY_SIZE);

 if (hfunc)
  *hfunc = ETH_RSS_HASH_TOP;

 return 0;
}
