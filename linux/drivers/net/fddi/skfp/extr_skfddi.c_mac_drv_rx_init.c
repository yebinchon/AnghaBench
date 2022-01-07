
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int protocol; } ;
struct TYPE_2__ {int dev; } ;
struct s_smc {TYPE_1__ os; } ;


 int FDDI_MAC_HDR_LEN ;
 int GFP_ATOMIC ;
 struct sk_buff* alloc_skb (int,int ) ;
 int fddi_type_trans (struct sk_buff*,int ) ;
 int netif_rx (struct sk_buff*) ;
 int pr_debug (char*,...) ;
 int skb_copy_to_linear_data (struct sk_buff*,char*,int) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;

int mac_drv_rx_init(struct s_smc *smc, int len, int fc,
      char *look_ahead, int la_len)
{
 struct sk_buff *skb;

 pr_debug("entering mac_drv_rx_init(len=%d)\n", len);



 if (len != la_len || len < FDDI_MAC_HDR_LEN || !look_ahead) {
  pr_debug("fddi: Discard invalid local SMT frame\n");
  pr_debug("  len=%d, la_len=%d, (ULONG) look_ahead=%08lXh.\n",
         len, la_len, (unsigned long) look_ahead);
  return 0;
 }
 skb = alloc_skb(len + 3, GFP_ATOMIC);
 if (!skb) {
  pr_debug("fddi: Local SMT: skb memory exhausted.\n");
  return 0;
 }
 skb_reserve(skb, 3);
 skb_put(skb, len);
 skb_copy_to_linear_data(skb, look_ahead, len);


 skb->protocol = fddi_type_trans(skb, smc->os.dev);
 netif_rx(skb);

 return 0;
}
