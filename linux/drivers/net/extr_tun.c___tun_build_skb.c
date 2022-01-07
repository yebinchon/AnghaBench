
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sk; } ;
struct tun_file {TYPE_1__ socket; } ;
struct sk_buff {int dummy; } ;
struct page_frag {int offset; int page; } ;


 int ENOMEM ;
 struct sk_buff* ERR_PTR (int ) ;
 struct sk_buff* build_skb (char*,int) ;
 int get_page (int ) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;
 int skb_set_owner_w (struct sk_buff*,int ) ;

__attribute__((used)) static struct sk_buff *__tun_build_skb(struct tun_file *tfile,
           struct page_frag *alloc_frag, char *buf,
           int buflen, int len, int pad)
{
 struct sk_buff *skb = build_skb(buf, buflen);

 if (!skb)
  return ERR_PTR(-ENOMEM);

 skb_reserve(skb, pad);
 skb_put(skb, len);
 skb_set_owner_w(skb, tfile->socket.sk);

 get_page(alloc_frag->page);
 alloc_frag->offset += buflen;

 return skb;
}
