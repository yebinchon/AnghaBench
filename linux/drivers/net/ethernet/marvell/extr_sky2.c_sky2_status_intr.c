
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct sky2_status_le {int opcode; unsigned int css; int status; int length; } ;
struct sky2_port {int dummy; } ;
struct sky2_hw {scalar_t__ st_idx; int flags; struct net_device** dev; int st_size; struct sky2_status_le* st_le; } ;
struct sk_buff {int protocol; int ip_summed; } ;
struct net_device {int features; } ;


 int CHECKSUM_NONE ;
 int CHECKSUM_UNNECESSARY ;
 int CSS_ISIPV4 ;
 int CSS_ISIPV6 ;
 unsigned int CSS_LINK_BIT ;
 int CSS_TCPUDPCSOK ;
 int HW_OWNER ;
 int NETIF_F_RXCSUM ;






 int RING_NEXT (int,int ) ;
 int SC_STAT_CLR_IRQ ;
 int SKY2_HW_NEW_LE ;
 int STAT_CTRL ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 scalar_t__ le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int likely (int) ;
 int net_ratelimit () ;
 struct sky2_port* netdev_priv (struct net_device*) ;
 int pr_warn (char*,int) ;
 int rmb () ;
 struct sk_buff* sky2_receive (struct net_device*,scalar_t__,int) ;
 int sky2_rx_checksum (struct sky2_port*,int) ;
 int sky2_rx_done (struct sky2_hw*,int,unsigned int,unsigned int) ;
 int sky2_rx_hash (struct sky2_port*,int) ;
 int sky2_rx_tag (struct sky2_port*,scalar_t__) ;
 int sky2_skb_rx (struct sky2_port*,struct sk_buff*) ;
 int sky2_tx_done (struct net_device*,int) ;
 int sky2_write32 (struct sky2_hw*,int ,int ) ;

__attribute__((used)) static int sky2_status_intr(struct sky2_hw *hw, int to_do, u16 idx)
{
 int work_done = 0;
 unsigned int total_bytes[2] = { 0 };
 unsigned int total_packets[2] = { 0 };

 if (to_do <= 0)
  return work_done;

 rmb();
 do {
  struct sky2_port *sky2;
  struct sky2_status_le *le = hw->st_le + hw->st_idx;
  unsigned port;
  struct net_device *dev;
  struct sk_buff *skb;
  u32 status;
  u16 length;
  u8 opcode = le->opcode;

  if (!(opcode & HW_OWNER))
   break;

  hw->st_idx = RING_NEXT(hw->st_idx, hw->st_size);

  port = le->css & CSS_LINK_BIT;
  dev = hw->dev[port];
  sky2 = netdev_priv(dev);
  length = le16_to_cpu(le->length);
  status = le32_to_cpu(le->status);

  le->opcode = 0;
  switch (opcode & ~HW_OWNER) {
  case 130:
   total_packets[port]++;
   total_bytes[port] += length;

   skb = sky2_receive(dev, length, status);
   if (!skb)
    break;


   if (hw->flags & SKY2_HW_NEW_LE) {
    if ((dev->features & NETIF_F_RXCSUM) &&
        (le->css & (CSS_ISIPV4 | CSS_ISIPV6)) &&
        (le->css & CSS_TCPUDPCSOK))
     skb->ip_summed = CHECKSUM_UNNECESSARY;
    else
     skb->ip_summed = CHECKSUM_NONE;
   }

   skb->protocol = eth_type_trans(skb, dev);
   sky2_skb_rx(sky2, skb);


   if (++work_done >= to_do)
    goto exit_loop;
   break;

  case 129:
   sky2_rx_tag(sky2, length);
   break;

  case 131:
   sky2_rx_tag(sky2, length);

  case 132:
   if (likely(dev->features & NETIF_F_RXCSUM))
    sky2_rx_checksum(sky2, status);
   break;

  case 133:
   sky2_rx_hash(sky2, status);
   break;

  case 128:

   sky2_tx_done(hw->dev[0], status & 0xfff);
   if (hw->dev[1])
    sky2_tx_done(hw->dev[1],
         ((status >> 24) & 0xff)
          | (u16)(length & 0xf) << 8);
   break;

  default:
   if (net_ratelimit())
    pr_warn("unknown status opcode 0x%x\n", opcode);
  }
 } while (hw->st_idx != idx);


 sky2_write32(hw, STAT_CTRL, SC_STAT_CLR_IRQ);

exit_loop:
 sky2_rx_done(hw, 0, total_packets[0], total_bytes[0]);
 sky2_rx_done(hw, 1, total_packets[1], total_bytes[1]);

 return work_done;
}
