
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nfp_app {int dummy; } ;
typedef int gfp_t ;


 struct sk_buff* alloc_skb (unsigned int,int ) ;
 scalar_t__ nfp_app_ctrl_has_meta (struct nfp_app*) ;
 int skb_reserve (struct sk_buff*,int) ;

struct sk_buff *
nfp_app_ctrl_msg_alloc(struct nfp_app *app, unsigned int size, gfp_t priority)
{
 struct sk_buff *skb;

 if (nfp_app_ctrl_has_meta(app))
  size += 8;

 skb = alloc_skb(size, priority);
 if (!skb)
  return ((void*)0);

 if (nfp_app_ctrl_has_meta(app))
  skb_reserve(skb, 8);

 return skb;
}
