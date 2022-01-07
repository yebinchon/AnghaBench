
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct cfhsi {int * qhead; } ;


 int CFHSI_PRIO_LAST ;
 struct sk_buff* skb_dequeue (int *) ;

__attribute__((used)) static struct sk_buff *cfhsi_dequeue(struct cfhsi *cfhsi)
{
 struct sk_buff *skb;
 int i;

 for (i = 0; i < CFHSI_PRIO_LAST; ++i) {
  skb = skb_dequeue(&cfhsi->qhead[i]);
  if (skb)
   break;
 }

 return skb;
}
