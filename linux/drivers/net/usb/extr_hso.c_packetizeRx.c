
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct iphdr {int dummy; } ;
struct TYPE_8__ {int tot_len; } ;
struct hso_net {int rx_parse_state; unsigned int rx_buf_missing; int rx_buf_size; TYPE_7__* net; TYPE_3__* skb_rx_buf; TYPE_1__ rx_ip_hdr; } ;
struct TYPE_9__ {int rx_bytes; int rx_packets; } ;
struct TYPE_11__ {TYPE_2__ stats; int dev; } ;
struct TYPE_10__ {int protocol; } ;


 unsigned short DEFAULT_MRU ;
 int DUMP (unsigned char*,int ) ;
 int ETH_P_IP ;



 int cpu_to_be16 (int ) ;
 int dev_err (int *,char*,unsigned short) ;
 int hso_dbg (int,char*,...) ;
 int memcpy (unsigned char*,unsigned char*,unsigned short) ;
 int min (int,int) ;
 TYPE_3__* netdev_alloc_skb (TYPE_7__*,unsigned short) ;
 int netif_rx (TYPE_3__*) ;
 unsigned short ntohs (int ) ;
 int skb_put_data (TYPE_3__*,...) ;
 int skb_reset_mac_header (TYPE_3__*) ;

__attribute__((used)) static void packetizeRx(struct hso_net *odev, unsigned char *ip_pkt,
   unsigned int count, unsigned char is_eop)
{
 unsigned short temp_bytes;
 unsigned short buffer_offset = 0;
 unsigned short frame_len;


 hso_dbg(0x1, "Rx %d bytes\n", count);
 DUMP(ip_pkt, min(128, (int)count));

 while (count) {
  switch (odev->rx_parse_state) {
  case 129:


   temp_bytes =
       (count <
        odev->rx_buf_missing) ? count : odev->
       rx_buf_missing;

   memcpy(((unsigned char *)(&odev->rx_ip_hdr)) +
          odev->rx_buf_size, ip_pkt + buffer_offset,
          temp_bytes);

   odev->rx_buf_size += temp_bytes;
   buffer_offset += temp_bytes;
   odev->rx_buf_missing -= temp_bytes;
   count -= temp_bytes;

   if (!odev->rx_buf_missing) {


    frame_len = ntohs(odev->rx_ip_hdr.tot_len);

    if ((frame_len > DEFAULT_MRU) ||
        (frame_len < sizeof(struct iphdr))) {
     dev_err(&odev->net->dev,
      "Invalid frame (%d) length\n",
      frame_len);
     odev->rx_parse_state = 128;
     continue;
    }

    odev->skb_rx_buf = netdev_alloc_skb(odev->net,
            frame_len);
    if (!odev->skb_rx_buf) {

     hso_dbg(0x1, "could not allocate memory\n");
     odev->rx_parse_state = 128;
     continue;
    }



    skb_put_data(odev->skb_rx_buf,
          (char *)&(odev->rx_ip_hdr),
          sizeof(struct iphdr));


    odev->rx_buf_size = sizeof(struct iphdr);


    odev->rx_buf_missing =
        frame_len - sizeof(struct iphdr);
    odev->rx_parse_state = 130;
   }
   break;

  case 130:
   temp_bytes = (count < odev->rx_buf_missing)
     ? count : odev->rx_buf_missing;




   skb_put_data(odev->skb_rx_buf,
         ip_pkt + buffer_offset,
         temp_bytes);

   odev->rx_buf_missing -= temp_bytes;
   count -= temp_bytes;
   buffer_offset += temp_bytes;
   odev->rx_buf_size += temp_bytes;
   if (!odev->rx_buf_missing) {


    odev->skb_rx_buf->protocol = cpu_to_be16(ETH_P_IP);
    skb_reset_mac_header(odev->skb_rx_buf);


    netif_rx(odev->skb_rx_buf);

    odev->skb_rx_buf = ((void*)0);


    odev->net->stats.rx_packets++;

    odev->net->stats.rx_bytes += odev->rx_buf_size;

    odev->rx_buf_size = 0;
    odev->rx_buf_missing = sizeof(struct iphdr);
    odev->rx_parse_state = 129;
   }
   break;

  case 128:
   hso_dbg(0x1, " W_S\n");
   count = 0;
   break;
  default:
   hso_dbg(0x1, "\n");
   count--;
   break;
  }
 }


 if (is_eop) {
  if (odev->rx_parse_state == 128) {
   odev->rx_parse_state = 129;
   odev->rx_buf_size = 0;
   odev->rx_buf_missing = sizeof(struct iphdr);
  }
 }
}
