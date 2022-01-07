
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
typedef int __be16 ;
struct TYPE_2__ {size_t gso_size; } ;


 int * mlx5e_ipsec_inverse_table ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static inline __be16 mlx5e_ipsec_mss_inv(struct sk_buff *skb)
{
 return mlx5e_ipsec_inverse_table[skb_shinfo(skb)->gso_size];
}
