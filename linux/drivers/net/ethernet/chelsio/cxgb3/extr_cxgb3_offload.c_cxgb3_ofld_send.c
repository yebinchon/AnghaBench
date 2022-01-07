
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t3cdev {int (* send ) (struct t3cdev*,struct sk_buff*) ;} ;
struct sk_buff {int dummy; } ;


 int local_bh_disable () ;
 int local_bh_enable () ;
 int stub1 (struct t3cdev*,struct sk_buff*) ;

int cxgb3_ofld_send(struct t3cdev *dev, struct sk_buff *skb)
{
 int r;

 local_bh_disable();
 r = dev->send(dev, skb);
 local_bh_enable();
 return r;
}
