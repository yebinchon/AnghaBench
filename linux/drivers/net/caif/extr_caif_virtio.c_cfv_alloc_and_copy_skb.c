
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct cfv_info {scalar_t__ mru; scalar_t__ rx_hr; scalar_t__ rx_tr; int ndev; } ;


 int ENOMEM ;
 int EPROTO ;
 int IP_HDR_ALIGN ;
 struct sk_buff* netdev_alloc_skb (int ,scalar_t__) ;
 int netdev_err (int ,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int skb_put_data (struct sk_buff*,int *,scalar_t__) ;
 int skb_reserve (struct sk_buff*,int) ;

__attribute__((used)) static struct sk_buff *cfv_alloc_and_copy_skb(int *err,
           struct cfv_info *cfv,
           u8 *frm, u32 frm_len)
{
 struct sk_buff *skb;
 u32 cfpkt_len, pad_len;

 *err = 0;

 if (frm_len > cfv->mru || frm_len <= cfv->rx_hr + cfv->rx_tr) {
  netdev_err(cfv->ndev,
      "Invalid frmlen:%u  mtu:%u hr:%d tr:%d\n",
      frm_len, cfv->mru, cfv->rx_hr,
      cfv->rx_tr);
  *err = -EPROTO;
  return ((void*)0);
 }

 cfpkt_len = frm_len - (cfv->rx_hr + cfv->rx_tr);
 pad_len = (unsigned long)(frm + cfv->rx_hr) & (IP_HDR_ALIGN - 1);

 skb = netdev_alloc_skb(cfv->ndev, frm_len + pad_len);
 if (!skb) {
  *err = -ENOMEM;
  return ((void*)0);
 }

 skb_reserve(skb, cfv->rx_hr + pad_len);

 skb_put_data(skb, frm + cfv->rx_hr, cfpkt_len);
 return skb;
}
