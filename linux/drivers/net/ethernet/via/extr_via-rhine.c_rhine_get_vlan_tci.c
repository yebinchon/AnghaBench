
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sk_buff {scalar_t__ data; } ;
typedef int __be16 ;


 int be16_to_cpup (int *) ;

__attribute__((used)) static inline u16 rhine_get_vlan_tci(struct sk_buff *skb, int data_size)
{
 u8 *trailer = (u8 *)skb->data + ((data_size + 3) & ~3) + 2;
 return be16_to_cpup((__be16 *)trailer);
}
