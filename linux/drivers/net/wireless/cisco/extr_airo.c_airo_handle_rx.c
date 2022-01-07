
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int v ;
typedef int u16 ;
struct sk_buff {int ip_summed; int protocol; int * dev; int pkt_type; } ;
struct rx_hdr {size_t* rssi; scalar_t__ len; scalar_t__ status; } ;
struct iw_quality {size_t qual; int level; int updated; int noise; } ;
struct TYPE_15__ {int noise; } ;
struct TYPE_16__ {TYPE_5__ qual; } ;
struct TYPE_13__ {scalar_t__ spy_number; } ;
struct TYPE_12__ {scalar_t__ enabled; } ;
struct airo_info {TYPE_8__* dev; int * wifidev; int flags; TYPE_6__ wstats; TYPE_4__* rssi; TYPE_3__ spy_data; TYPE_2__ micstats; } ;
typedef int micbuf ;
typedef int hdr ;
typedef int fc ;
typedef int etherHead ;
typedef scalar_t__ __le16 ;
struct TYPE_11__ {int rx_dropped; } ;
struct TYPE_18__ {int name; TYPE_1__ stats; } ;
struct TYPE_17__ {int typelen; } ;
struct TYPE_14__ {int rssidBm; } ;
typedef TYPE_7__ MICBuffer ;


 int AIRO_DEF_MTU ;
 int BAP0 ;
 int CHECKSUM_NONE ;
 int ETH_ALEN ;
 int ETH_P_802_2 ;
 int EVACK ;
 int EV_RX ;
 int FLAG_802_11 ;
 int FLAG_MPI ;
 int IN4500 (struct airo_info*,int ) ;
 int IW_QUAL_DBM ;
 int IW_QUAL_LEVEL_UPDATED ;
 int IW_QUAL_QUAL_UPDATED ;
 int OUT4500 (struct airo_info*,int ,int ) ;
 int PACKET_OTHERHOST ;
 int RXFID ;
 int airo_print_err (int ,char*,...) ;
 int bap_read (struct airo_info*,scalar_t__*,int,int ) ;
 int bap_setup (struct airo_info*,int,int,int ) ;
 scalar_t__ decapsulate (struct airo_info*,TYPE_7__*,int *,int) ;
 struct sk_buff* dev_alloc_skb (int) ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 int eth_type_trans (struct sk_buff*,TYPE_8__*) ;
 int header_len (scalar_t__) ;
 int htons (int ) ;
 int le16_to_cpu (scalar_t__) ;
 int mpi_receive_802_11 (struct airo_info*) ;
 int mpi_receive_802_3 (struct airo_info*) ;
 int netif_rx (struct sk_buff*) ;
 int ntohs (int ) ;
 scalar_t__* skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int skb_trim (struct sk_buff*,int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int wireless_spy_update (TYPE_8__*,char*,struct iw_quality*) ;

__attribute__((used)) static void airo_handle_rx(struct airo_info *ai)
{
 struct sk_buff *skb = ((void*)0);
 __le16 fc, v, *buffer, tmpbuf[4];
 u16 len, hdrlen = 0, gap, fid;
 struct rx_hdr hdr;
 int success = 0;

 if (test_bit(FLAG_MPI, &ai->flags)) {
  if (test_bit(FLAG_802_11, &ai->flags))
   mpi_receive_802_11(ai);
  else
   mpi_receive_802_3(ai);
  OUT4500(ai, EVACK, EV_RX);
  return;
 }

 fid = IN4500(ai, RXFID);


 if (test_bit(FLAG_802_11, &ai->flags)) {
  bap_setup (ai, fid, 4, BAP0);
  bap_read (ai, (__le16*)&hdr, sizeof(hdr), BAP0);

  if (le16_to_cpu(hdr.status) & 2)
   hdr.len = 0;
  if (ai->wifidev == ((void*)0))
   hdr.len = 0;
 } else {
  bap_setup(ai, fid, 0x36, BAP0);
  bap_read(ai, &hdr.len, 2, BAP0);
 }
 len = le16_to_cpu(hdr.len);

 if (len > AIRO_DEF_MTU) {
  airo_print_err(ai->dev->name, "Bad size %d", len);
  goto done;
 }
 if (len == 0)
  goto done;

 if (test_bit(FLAG_802_11, &ai->flags)) {
  bap_read(ai, &fc, sizeof (fc), BAP0);
  hdrlen = header_len(fc);
 } else
  hdrlen = ETH_ALEN * 2;

 skb = dev_alloc_skb(len + hdrlen + 2 + 2);
 if (!skb) {
  ai->dev->stats.rx_dropped++;
  goto done;
 }

 skb_reserve(skb, 2);
 buffer = skb_put(skb, len + hdrlen);
 if (test_bit(FLAG_802_11, &ai->flags)) {
  buffer[0] = fc;
  bap_read(ai, buffer + 1, hdrlen - 2, BAP0);
  if (hdrlen == 24)
   bap_read(ai, tmpbuf, 6, BAP0);

  bap_read(ai, &v, sizeof(v), BAP0);
  gap = le16_to_cpu(v);
  if (gap) {
   if (gap <= 8) {
    bap_read(ai, tmpbuf, gap, BAP0);
   } else {
    airo_print_err(ai->dev->name, "gaplen too "
     "big. Problems will follow...");
   }
  }
  bap_read(ai, buffer + hdrlen/2, len, BAP0);
 } else {
  MICBuffer micbuf;

  bap_read(ai, buffer, ETH_ALEN * 2, BAP0);
  if (ai->micstats.enabled) {
   bap_read(ai, (__le16 *) &micbuf, sizeof (micbuf), BAP0);
   if (ntohs(micbuf.typelen) > 0x05DC)
    bap_setup(ai, fid, 0x44, BAP0);
   else {
    if (len <= sizeof (micbuf)) {
     dev_kfree_skb_irq(skb);
     goto done;
    }

    len -= sizeof(micbuf);
    skb_trim(skb, len + hdrlen);
   }
  }

  bap_read(ai, buffer + ETH_ALEN, len, BAP0);
  if (decapsulate(ai, &micbuf, (etherHead*) buffer, len))
   dev_kfree_skb_irq (skb);
  else
   success = 1;
 }
done:
 OUT4500(ai, EVACK, EV_RX);

 if (success) {
  if (test_bit(FLAG_802_11, &ai->flags)) {
   skb_reset_mac_header(skb);
   skb->pkt_type = PACKET_OTHERHOST;
   skb->dev = ai->wifidev;
   skb->protocol = htons(ETH_P_802_2);
  } else
   skb->protocol = eth_type_trans(skb, ai->dev);
  skb->ip_summed = CHECKSUM_NONE;

  netif_rx(skb);
 }
}
