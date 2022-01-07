
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct sock* sk; } ;
struct tun_file {TYPE_1__ socket; } ;
struct sock {int dummy; } ;
struct sk_buff {size_t data_len; size_t len; } ;


 struct sk_buff* ERR_PTR (int) ;
 size_t PAGE_SIZE ;
 int skb_put (struct sk_buff*,size_t) ;
 int skb_reserve (struct sk_buff*,size_t) ;
 struct sk_buff* sock_alloc_send_pskb (struct sock*,size_t,size_t,int,int*,int ) ;

__attribute__((used)) static struct sk_buff *tun_alloc_skb(struct tun_file *tfile,
         size_t prepad, size_t len,
         size_t linear, int noblock)
{
 struct sock *sk = tfile->socket.sk;
 struct sk_buff *skb;
 int err;


 if (prepad + len < PAGE_SIZE || !linear)
  linear = len;

 skb = sock_alloc_send_pskb(sk, prepad + linear, len - linear, noblock,
       &err, 0);
 if (!skb)
  return ERR_PTR(err);

 skb_reserve(skb, prepad);
 skb_put(skb, linear);
 skb->data_len = len - linear;
 skb->len += len - linear;

 return skb;
}
