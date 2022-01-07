
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
typedef enum rss_hash_type { ____Placeholder_rss_hash_type } rss_hash_type ;
typedef enum pkt_hash_types { ____Placeholder_pkt_hash_types } pkt_hash_types ;
typedef int __le32 ;


 int ETH_FAST_PATH_RX_REG_CQE_RSS_HASH_TYPE ;
 int GET_FIELD (int ,int ) ;
 int PKT_HASH_TYPE_L3 ;
 int PKT_HASH_TYPE_L4 ;
 int PKT_HASH_TYPE_NONE ;
 int RSS_HASH_TYPE_IPV4 ;
 int RSS_HASH_TYPE_IPV6 ;
 int le32_to_cpu (int ) ;
 int skb_set_hash (struct sk_buff*,int ,int) ;

__attribute__((used)) static void qede_get_rxhash(struct sk_buff *skb, u8 bitfields, __le32 rss_hash)
{
 enum pkt_hash_types hash_type = PKT_HASH_TYPE_NONE;
 enum rss_hash_type htype;
 u32 hash = 0;

 htype = GET_FIELD(bitfields, ETH_FAST_PATH_RX_REG_CQE_RSS_HASH_TYPE);
 if (htype) {
  hash_type = ((htype == RSS_HASH_TYPE_IPV4) ||
        (htype == RSS_HASH_TYPE_IPV6)) ?
       PKT_HASH_TYPE_L3 : PKT_HASH_TYPE_L4;
  hash = le32_to_cpu(rss_hash);
 }
 skb_set_hash(skb, hash, hash_type);
}
