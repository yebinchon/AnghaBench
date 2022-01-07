
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t3cdev {int dummy; } ;
struct sk_buff {int dummy; } ;


 int local_bh_disable () ;
 int local_bh_enable () ;
 int t3_offload_tx (struct t3cdev*,struct sk_buff*) ;

__attribute__((used)) static inline int offload_tx(struct t3cdev *tdev, struct sk_buff *skb)
{
 int ret;

 local_bh_disable();
 ret = t3_offload_tx(tdev, skb);
 local_bh_enable();
 return ret;
}
