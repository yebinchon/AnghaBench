
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nfp_flower_cmsg_lag_config {int group_id; } ;
struct nfp_fl_lag {int retrans_skbs; } ;


 int EINVAL ;
 int ENOSPC ;
 scalar_t__ NFP_FL_LAG_GROUP_MAX ;
 scalar_t__ NFP_FL_LAG_RETRANS_LIMIT ;
 int __skb_queue_tail (int *,struct sk_buff*) ;
 scalar_t__ be32_to_cpu (int ) ;
 struct nfp_flower_cmsg_lag_config* nfp_flower_cmsg_get_data (struct sk_buff*) ;
 scalar_t__ skb_queue_len (int *) ;

__attribute__((used)) static int
nfp_fl_lag_put_unprocessed(struct nfp_fl_lag *lag, struct sk_buff *skb)
{
 struct nfp_flower_cmsg_lag_config *cmsg_payload;

 cmsg_payload = nfp_flower_cmsg_get_data(skb);
 if (be32_to_cpu(cmsg_payload->group_id) >= NFP_FL_LAG_GROUP_MAX)
  return -EINVAL;





 if (skb_queue_len(&lag->retrans_skbs) >= NFP_FL_LAG_RETRANS_LIMIT)
  return -ENOSPC;

 __skb_queue_tail(&lag->retrans_skbs, skb);

 return 0;
}
