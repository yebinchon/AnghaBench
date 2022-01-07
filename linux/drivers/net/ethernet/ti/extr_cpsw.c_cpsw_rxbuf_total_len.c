
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skb_shared_info {int dummy; } ;


 scalar_t__ CPSW_HEADROOM ;
 unsigned int SKB_DATA_ALIGN (unsigned int) ;

__attribute__((used)) static unsigned int cpsw_rxbuf_total_len(unsigned int len)
{
 len += CPSW_HEADROOM;
 len += SKB_DATA_ALIGN(sizeof(struct skb_shared_info));

 return SKB_DATA_ALIGN(len);
}
