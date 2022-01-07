
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlanhdr {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;


 int eth_gro_complete (struct sk_buff*,int) ;

__attribute__((used)) static int vxlan_gro_complete(struct sock *sk, struct sk_buff *skb, int nhoff)
{



 return eth_gro_complete(skb, nhoff + sizeof(struct vxlanhdr));
}
