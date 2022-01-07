
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct usbnet {TYPE_3__* net; TYPE_1__* udev; } ;
struct sk_buff {int len; int* data; } ;
struct TYPE_5__ {int rx_crc_errors; int rx_frame_errors; int rx_length_errors; int rx_errors; } ;
struct TYPE_6__ {int hard_header_len; TYPE_2__ stats; } ;
struct TYPE_4__ {int dev; } ;


 int MCS7830_RX_ALIGNMENT_ERROR ;
 int MCS7830_RX_CRC_ERROR ;
 int MCS7830_RX_FRAME_CORRECT ;
 int MCS7830_RX_LARGE_FRAME ;
 int MCS7830_RX_LENGTH_ERROR ;
 int MCS7830_RX_SHORT_FRAME ;
 int dev_dbg (int *,char*,int) ;
 int dev_err (int *,char*) ;
 int skb_trim (struct sk_buff*,int) ;

__attribute__((used)) static int mcs7830_rx_fixup(struct usbnet *dev, struct sk_buff *skb)
{
 u8 status;


 if (skb->len < dev->net->hard_header_len) {
  dev_err(&dev->udev->dev, "unexpected tiny rx frame\n");
  return 0;
 }

 skb_trim(skb, skb->len - 1);
 status = skb->data[skb->len];

 if (status != MCS7830_RX_FRAME_CORRECT) {
  dev_dbg(&dev->udev->dev, "rx fixup status %x\n", status);



  dev->net->stats.rx_errors++;

  if (status & (MCS7830_RX_SHORT_FRAME
    |MCS7830_RX_LENGTH_ERROR
    |MCS7830_RX_LARGE_FRAME))
   dev->net->stats.rx_length_errors++;
  if (status & MCS7830_RX_ALIGNMENT_ERROR)
   dev->net->stats.rx_frame_errors++;
  if (status & MCS7830_RX_CRC_ERROR)
   dev->net->stats.rx_crc_errors++;
 }

 return skb->len > 0;
}
