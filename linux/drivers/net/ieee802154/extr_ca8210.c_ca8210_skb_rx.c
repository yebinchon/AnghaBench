
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* u8 ;
typedef void* u16 ;
struct sk_buff {int mac_len; } ;
struct ieee802154_hw {struct ca8210_priv* priv; } ;
struct TYPE_9__ {int mode; int pan_id; int extended_addr; } ;
struct TYPE_8__ {int type; int security_enabled; int intra_pan; int dest_addr_mode; int source_addr_mode; } ;
struct TYPE_7__ {int mode; int pan_id; int extended_addr; } ;
struct TYPE_6__ {int level; void* key_id; int extended_src; void* key_id_mode; } ;
struct ieee802154_hdr {TYPE_4__ source; TYPE_3__ fc; TYPE_2__ dest; TYPE_1__ sec; } ;
struct ca8210_priv {TYPE_5__* spi; scalar_t__ promiscuous; } ;
typedef int hdr ;
struct TYPE_10__ {int dev; } ;


 int EMSGSIZE ;
 int ENOMEM ;
 int IEEE802154_MTU ;
 struct sk_buff* dev_alloc_skb (int) ;
 int dev_crit (int *,char*) ;
 int dev_dbg (int *,char*,int) ;
 int dev_err (int *,char*) ;
 int ieee802154_hdr_push (struct sk_buff*,struct ieee802154_hdr*) ;
 int ieee802154_rx_irqsafe (struct ieee802154_hw*,struct sk_buff*,void*) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (int *,void**,int) ;
 int skb_put_data (struct sk_buff*,void**,int) ;
 int skb_reserve (struct sk_buff*,int) ;
 int skb_reset_mac_header (struct sk_buff*) ;

__attribute__((used)) static int ca8210_skb_rx(
 struct ieee802154_hw *hw,
 size_t len,
 u8 *data_ind
)
{
 struct ieee802154_hdr hdr;
 int msdulen;
 int hlen;
 u8 mpdulinkquality = data_ind[23];
 struct sk_buff *skb;
 struct ca8210_priv *priv = hw->priv;


 skb = dev_alloc_skb(IEEE802154_MTU + sizeof(hdr));
 if (!skb)
  return -ENOMEM;

 skb_reserve(skb, sizeof(hdr));

 msdulen = data_ind[22];
 if (msdulen > IEEE802154_MTU) {
  dev_err(
   &priv->spi->dev,
   "received erroneously large msdu length!\n"
  );
  kfree_skb(skb);
  return -EMSGSIZE;
 }
 dev_dbg(&priv->spi->dev, "skb buffer length = %d\n", msdulen);

 if (priv->promiscuous)
  goto copy_payload;


 hdr.sec.level = data_ind[29 + msdulen];
 dev_dbg(&priv->spi->dev, "security level: %#03x\n", hdr.sec.level);
 if (hdr.sec.level > 0) {
  hdr.sec.key_id_mode = data_ind[30 + msdulen];
  memcpy(&hdr.sec.extended_src, &data_ind[31 + msdulen], 8);
  hdr.sec.key_id = data_ind[39 + msdulen];
 }
 hdr.source.mode = data_ind[0];
 dev_dbg(&priv->spi->dev, "srcAddrMode: %#03x\n", hdr.source.mode);
 hdr.source.pan_id = *(u16 *)&data_ind[1];
 dev_dbg(&priv->spi->dev, "srcPanId: %#06x\n", hdr.source.pan_id);
 memcpy(&hdr.source.extended_addr, &data_ind[3], 8);
 hdr.dest.mode = data_ind[11];
 dev_dbg(&priv->spi->dev, "dstAddrMode: %#03x\n", hdr.dest.mode);
 hdr.dest.pan_id = *(u16 *)&data_ind[12];
 dev_dbg(&priv->spi->dev, "dstPanId: %#06x\n", hdr.dest.pan_id);
 memcpy(&hdr.dest.extended_addr, &data_ind[14], 8);


 hdr.fc.type = 1;
 if (hdr.sec.level)
  hdr.fc.security_enabled = 1;
 else
  hdr.fc.security_enabled = 0;
 if (data_ind[1] != data_ind[12] || data_ind[2] != data_ind[13])
  hdr.fc.intra_pan = 1;
 else
  hdr.fc.intra_pan = 0;
 hdr.fc.dest_addr_mode = hdr.dest.mode;
 hdr.fc.source_addr_mode = hdr.source.mode;


 hlen = ieee802154_hdr_push(skb, &hdr);

 if (hlen < 0) {
  dev_crit(&priv->spi->dev, "failed to push mac hdr onto skb!\n");
  kfree_skb(skb);
  return hlen;
 }

 skb_reset_mac_header(skb);
 skb->mac_len = hlen;

copy_payload:


 skb_put_data(skb, &data_ind[29], msdulen);

 ieee802154_rx_irqsafe(hw, skb, mpdulinkquality);
 return 0;
}
