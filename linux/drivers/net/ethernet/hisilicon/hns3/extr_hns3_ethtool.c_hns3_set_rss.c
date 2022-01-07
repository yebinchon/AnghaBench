
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct hnae3_handle {TYPE_2__* ae_algo; TYPE_3__* pdev; } ;
struct TYPE_6__ {int revision; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* set_rss ) (struct hnae3_handle*,int const*,int const*,int const) ;} ;


 int EOPNOTSUPP ;
 int const ETH_RSS_HASH_NO_CHANGE ;
 int const ETH_RSS_HASH_TOP ;
 int const ETH_RSS_HASH_XOR ;
 struct hnae3_handle* hns3_get_handle (struct net_device*) ;
 int netdev_err (struct net_device*,char*) ;
 int stub1 (struct hnae3_handle*,int const*,int const*,int const) ;

__attribute__((used)) static int hns3_set_rss(struct net_device *netdev, const u32 *indir,
   const u8 *key, const u8 hfunc)
{
 struct hnae3_handle *h = hns3_get_handle(netdev);

 if (!h->ae_algo->ops->set_rss)
  return -EOPNOTSUPP;

 if ((h->pdev->revision == 0x20 &&
      hfunc != ETH_RSS_HASH_TOP) || (hfunc != ETH_RSS_HASH_NO_CHANGE &&
      hfunc != ETH_RSS_HASH_TOP && hfunc != ETH_RSS_HASH_XOR)) {
  netdev_err(netdev, "hash func not supported\n");
  return -EOPNOTSUPP;
 }

 if (!indir) {
  netdev_err(netdev,
      "set rss failed for indir is empty\n");
  return -EOPNOTSUPP;
 }

 return h->ae_algo->ops->set_rss(h, indir, key, hfunc);
}
