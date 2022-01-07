
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nfp_app_bpf {int app; } ;


 int GFP_KERNEL ;
 struct sk_buff* nfp_app_ctrl_msg_alloc (int ,unsigned int,int ) ;
 int skb_put (struct sk_buff*,unsigned int) ;

__attribute__((used)) static struct sk_buff *
nfp_bpf_cmsg_alloc(struct nfp_app_bpf *bpf, unsigned int size)
{
 struct sk_buff *skb;

 skb = nfp_app_ctrl_msg_alloc(bpf->app, size, GFP_KERNEL);
 skb_put(skb, size);

 return skb;
}
