
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
typedef int __be16 ;


 int ETH_P_IP ;
 int cpu_to_be16 (int ) ;

__attribute__((used)) static __be16 raw_type_trans(struct sk_buff *skb, struct net_device *dev)
{
 return cpu_to_be16(ETH_P_IP);
}
