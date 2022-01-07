
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_4__ {int num_tqps; } ;
struct hnae3_handle {TYPE_2__ kinfo; TYPE_1__* ae_algo; } ;
struct hnae3_ae_ops {int (* get_sset_count ) (struct hnae3_handle*,int) ;} ;
struct TYPE_3__ {struct hnae3_ae_ops* ops; } ;


 int EOPNOTSUPP ;


 int HNS3_TQP_STATS_COUNT ;
 struct hnae3_handle* hns3_get_handle (struct net_device*) ;
 int stub1 (struct hnae3_handle*,int) ;
 int stub2 (struct hnae3_handle*,int) ;

__attribute__((used)) static int hns3_get_sset_count(struct net_device *netdev, int stringset)
{
 struct hnae3_handle *h = hns3_get_handle(netdev);
 const struct hnae3_ae_ops *ops = h->ae_algo->ops;

 if (!ops->get_sset_count)
  return -EOPNOTSUPP;

 switch (stringset) {
 case 129:
  return ((HNS3_TQP_STATS_COUNT * h->kinfo.num_tqps) +
   ops->get_sset_count(h, stringset));

 case 128:
  return ops->get_sset_count(h, stringset);

 default:
  return -EOPNOTSUPP;
 }
}
