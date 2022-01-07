
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skb_shared_info {int dummy; } ;


 int MTK_MAX_RX_LENGTH ;
 int NET_IP_ALIGN ;
 int NET_SKB_PAD ;
 int SKB_DATA_ALIGN (int) ;
 int WARN_ON (int) ;

__attribute__((used)) static inline int mtk_max_buf_size(int frag_size)
{
 int buf_size = frag_size - NET_SKB_PAD - NET_IP_ALIGN -
         SKB_DATA_ALIGN(sizeof(struct skb_shared_info));

 WARN_ON(buf_size < MTK_MAX_RX_LENGTH);

 return buf_size;
}
