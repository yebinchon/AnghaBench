
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct mlx5_cqe64 {int rss_hash_type; int rss_hash_result; } ;


 int CQE_RSS_HTYPE_IP ;
 int CQE_RSS_HTYPE_L4 ;
 int PKT_HASH_TYPE_L3 ;
 int PKT_HASH_TYPE_L4 ;
 int PKT_HASH_TYPE_NONE ;
 int be32_to_cpu (int ) ;
 int skb_set_hash (struct sk_buff*,int ,int) ;

__attribute__((used)) static inline void mlx5e_skb_set_hash(struct mlx5_cqe64 *cqe,
          struct sk_buff *skb)
{
 u8 cht = cqe->rss_hash_type;
 int ht = (cht & CQE_RSS_HTYPE_L4) ? PKT_HASH_TYPE_L4 :
   (cht & CQE_RSS_HTYPE_IP) ? PKT_HASH_TYPE_L3 :
         PKT_HASH_TYPE_NONE;
 skb_set_hash(skb, be32_to_cpu(cqe->rss_hash_result), ht);
}
