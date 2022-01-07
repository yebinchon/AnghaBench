
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s_addr; } ;
struct TYPE_4__ {TYPE_1__ sin_addr; } ;
union vxlan_addr {TYPE_2__ sin; } ;
struct sk_buff {int dummy; } ;


 int nla_put_in_addr (struct sk_buff*,int,int ) ;

__attribute__((used)) static int vxlan_nla_put_addr(struct sk_buff *skb, int attr,
         const union vxlan_addr *ip)
{
 return nla_put_in_addr(skb, attr, ip->sin.sin_addr.s_addr);
}
