
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct device {int dummy; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_if {int drvr; } ;
struct brcmf_bus {struct brcmf_pub* drvr; } ;


 int BCMILCP_SUBTYPE_VENDOR_LONG ;
 int DATA ;
 int brcmf_dbg (int ,char*,int ,struct sk_buff*) ;
 int brcmf_fweh_process_skb (int ,struct sk_buff*,int ) ;
 int brcmf_netif_rx (struct brcmf_if*,struct sk_buff*) ;
 scalar_t__ brcmf_proto_is_reorder_skb (struct sk_buff*) ;
 int brcmf_proto_rxreorder (struct brcmf_if*,struct sk_buff*) ;
 scalar_t__ brcmf_rx_hdrpull (struct brcmf_pub*,struct sk_buff*,struct brcmf_if**) ;
 struct brcmf_bus* dev_get_drvdata (struct device*) ;
 int dev_name (struct device*) ;

void brcmf_rx_frame(struct device *dev, struct sk_buff *skb, bool handle_event)
{
 struct brcmf_if *ifp;
 struct brcmf_bus *bus_if = dev_get_drvdata(dev);
 struct brcmf_pub *drvr = bus_if->drvr;

 brcmf_dbg(DATA, "Enter: %s: rxp=%p\n", dev_name(dev), skb);

 if (brcmf_rx_hdrpull(drvr, skb, &ifp))
  return;

 if (brcmf_proto_is_reorder_skb(skb)) {
  brcmf_proto_rxreorder(ifp, skb);
 } else {

  if (handle_event)
   brcmf_fweh_process_skb(ifp->drvr, skb,
            BCMILCP_SUBTYPE_VENDOR_LONG);

  brcmf_netif_rx(ifp, skb);
 }
}
