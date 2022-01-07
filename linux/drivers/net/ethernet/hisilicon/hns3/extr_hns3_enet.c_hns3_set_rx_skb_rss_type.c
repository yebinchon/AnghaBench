
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct hns3_enet_ring {TYPE_1__* tqp; } ;
struct TYPE_4__ {int rss_type; } ;
struct hnae3_handle {TYPE_2__ kinfo; } ;
typedef enum pkt_hash_types { ____Placeholder_pkt_hash_types } pkt_hash_types ;
struct TYPE_3__ {struct hnae3_handle* handle; } ;


 int PKT_HASH_TYPE_NONE ;
 int skb_set_hash (struct sk_buff*,scalar_t__,int) ;

__attribute__((used)) static void hns3_set_rx_skb_rss_type(struct hns3_enet_ring *ring,
         struct sk_buff *skb, u32 rss_hash)
{
 struct hnae3_handle *handle = ring->tqp->handle;
 enum pkt_hash_types rss_type;

 if (rss_hash)
  rss_type = handle->kinfo.rss_type;
 else
  rss_type = PKT_HASH_TYPE_NONE;

 skb_set_hash(skb, rss_hash, rss_type);
}
