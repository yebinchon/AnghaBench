
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_data_s {int * tty; } ;
struct sk_buff {long len; } ;


 long EINVAL ;
 int pr_debug (char*,long) ;
 int pr_err (char*) ;
 int st_int_enqueue (struct st_data_s*,struct sk_buff*) ;
 int st_kim_ref (struct st_data_s**,int ) ;
 int st_tx_wakeup (struct st_data_s*) ;
 scalar_t__ unlikely (int) ;

long st_write(struct sk_buff *skb)
{
 struct st_data_s *st_gdata;
 long len;

 st_kim_ref(&st_gdata, 0);
 if (unlikely(skb == ((void*)0) || st_gdata == ((void*)0)
  || st_gdata->tty == ((void*)0))) {
  pr_err("data/tty unavailable to perform write");
  return -EINVAL;
 }

 pr_debug("%d to be written", skb->len);
 len = skb->len;


 st_int_enqueue(st_gdata, skb);

 st_tx_wakeup(st_gdata);


 return len;
}
