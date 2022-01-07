
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct nfp_app {int ctrl; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int memcpy (unsigned char*,void*,int ) ;
 int nfp_ctrl_tx (int ,struct sk_buff*) ;
 struct sk_buff* nfp_flower_cmsg_alloc (struct nfp_app*,int ,int ,int ) ;
 unsigned char* nfp_flower_cmsg_get_data (struct sk_buff*) ;
 int nfp_flower_cmsg_get_data_len (struct sk_buff*) ;

__attribute__((used)) static int
nfp_flower_xmit_tun_conf(struct nfp_app *app, u8 mtype, u16 plen, void *pdata,
    gfp_t flag)
{
 struct sk_buff *skb;
 unsigned char *msg;

 skb = nfp_flower_cmsg_alloc(app, plen, mtype, flag);
 if (!skb)
  return -ENOMEM;

 msg = nfp_flower_cmsg_get_data(skb);
 memcpy(msg, pdata, nfp_flower_cmsg_get_data_len(skb));

 nfp_ctrl_tx(app->ctrl, skb);
 return 0;
}
