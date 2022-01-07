
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef unsigned int u32 ;
struct thunderbolt_ip_frame_header {int frame_id; int frame_index; int frame_size; int frame_count; } ;
struct TYPE_5__ {int flags; } ;
struct tbnet_frame {TYPE_1__ frame; } ;
struct TYPE_8__ {int rx_missed_errors; int rx_length_errors; int rx_over_errors; int rx_crc_errors; } ;
struct TYPE_6__ {unsigned int frame_count; unsigned int frame_index; unsigned int frame_id; } ;
struct tbnet {TYPE_4__ stats; TYPE_3__* skb; TYPE_2__ rx_hdr; } ;
struct TYPE_7__ {scalar_t__ len; } ;


 int RING_DESC_BUFFER_OVERRUN ;
 int RING_DESC_CRC_ERROR ;
 scalar_t__ TBNET_MAX_MTU ;
 int TBNET_RING_SIZE ;
 unsigned int le16_to_cpu (int ) ;
 unsigned int le32_to_cpu (int ) ;
 unsigned int tbnet_frame_size (struct tbnet_frame const*) ;

__attribute__((used)) static bool tbnet_check_frame(struct tbnet *net, const struct tbnet_frame *tf,
         const struct thunderbolt_ip_frame_header *hdr)
{
 u32 frame_id, frame_count, frame_size, frame_index;
 unsigned int size;

 if (tf->frame.flags & RING_DESC_CRC_ERROR) {
  net->stats.rx_crc_errors++;
  return 0;
 } else if (tf->frame.flags & RING_DESC_BUFFER_OVERRUN) {
  net->stats.rx_over_errors++;
  return 0;
 }


 size = tbnet_frame_size(tf);
 if (size <= sizeof(*hdr)) {
  net->stats.rx_length_errors++;
  return 0;
 }

 frame_count = le32_to_cpu(hdr->frame_count);
 frame_size = le32_to_cpu(hdr->frame_size);
 frame_index = le16_to_cpu(hdr->frame_index);
 frame_id = le16_to_cpu(hdr->frame_id);

 if ((frame_size > size - sizeof(*hdr)) || !frame_size) {
  net->stats.rx_length_errors++;
  return 0;
 }




 if (net->skb && net->rx_hdr.frame_count) {

  if (frame_count != net->rx_hdr.frame_count) {
   net->stats.rx_length_errors++;
   return 0;
  }




  if (frame_index != net->rx_hdr.frame_index + 1 ||
      frame_id != net->rx_hdr.frame_id) {
   net->stats.rx_missed_errors++;
   return 0;
  }

  if (net->skb->len + frame_size > TBNET_MAX_MTU) {
   net->stats.rx_length_errors++;
   return 0;
  }

  return 1;
 }


 if (frame_count == 0 || frame_count > TBNET_RING_SIZE / 4) {
  net->stats.rx_length_errors++;
  return 0;
 }
 if (frame_index != 0) {
  net->stats.rx_missed_errors++;
  return 0;
 }

 return 1;
}
