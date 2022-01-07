
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct hnae3_handle {TYPE_2__* ae_algo; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* get_rss ) (struct hnae3_handle*,int *,int *,int *) ;} ;


 int EOPNOTSUPP ;
 struct hnae3_handle* hns3_get_handle (struct net_device*) ;
 int stub1 (struct hnae3_handle*,int *,int *,int *) ;

__attribute__((used)) static int hns3_get_rss(struct net_device *netdev, u32 *indir, u8 *key,
   u8 *hfunc)
{
 struct hnae3_handle *h = hns3_get_handle(netdev);

 if (!h->ae_algo->ops->get_rss)
  return -EOPNOTSUPP;

 return h->ae_algo->ops->get_rss(h, indir, key, hfunc);
}
