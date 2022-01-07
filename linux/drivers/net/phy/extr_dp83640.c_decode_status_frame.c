
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef int type ;
struct sk_buff {int * data; } ;
struct phy_txts {int dummy; } ;
struct phy_rxts {int dummy; } ;
struct dp83640_private {int dummy; } ;


 int PSF_EVNT ;
 int PSF_RX ;
 int PSF_TX ;
 int decode_evnt (struct dp83640_private*,int *,int,int) ;
 int decode_rxts (struct dp83640_private*,struct phy_rxts*) ;
 int decode_txts (struct dp83640_private*,struct phy_txts*) ;
 int skb_headlen (struct sk_buff*) ;

__attribute__((used)) static void decode_status_frame(struct dp83640_private *dp83640,
    struct sk_buff *skb)
{
 struct phy_rxts *phy_rxts;
 struct phy_txts *phy_txts;
 u8 *ptr;
 int len, size;
 u16 ests, type;

 ptr = skb->data + 2;

 for (len = skb_headlen(skb) - 2; len > sizeof(type); len -= size) {

  type = *(u16 *)ptr;
  ests = type & 0x0fff;
  type = type & 0xf000;
  len -= sizeof(type);
  ptr += sizeof(type);

  if (PSF_RX == type && len >= sizeof(*phy_rxts)) {

   phy_rxts = (struct phy_rxts *) ptr;
   decode_rxts(dp83640, phy_rxts);
   size = sizeof(*phy_rxts);

  } else if (PSF_TX == type && len >= sizeof(*phy_txts)) {

   phy_txts = (struct phy_txts *) ptr;
   decode_txts(dp83640, phy_txts);
   size = sizeof(*phy_txts);

  } else if (PSF_EVNT == type) {

   size = decode_evnt(dp83640, ptr, len, ests);

  } else {
   size = 0;
   break;
  }
  ptr += size;
 }
}
