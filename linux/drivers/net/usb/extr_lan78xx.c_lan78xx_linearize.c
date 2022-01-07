
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int skb_linearize (struct sk_buff*) ;

__attribute__((used)) static int lan78xx_linearize(struct sk_buff *skb)
{
 return skb_linearize(skb);
}
