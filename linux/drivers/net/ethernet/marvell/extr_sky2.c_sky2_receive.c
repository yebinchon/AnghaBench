
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct sky2_port {int rx_next; int rx_pending; TYPE_1__* hw; struct rx_ring_info* rx_ring; } ;
struct sk_buff {int dummy; } ;
struct rx_ring_info {int skb; } ;
struct TYPE_4__ {int rx_errors; int rx_dropped; } ;
struct net_device {TYPE_2__ stats; } ;
struct TYPE_3__ {scalar_t__ chip_id; scalar_t__ chip_rev; } ;


 scalar_t__ CHIP_ID_YUKON_FE_P ;
 scalar_t__ CHIP_REV_YU_FE2_A0 ;
 int GMR_FS_ANY_ERR ;
 int GMR_FS_LEN ;
 int GMR_FS_RX_OK ;
 int KERN_DEBUG ;
 scalar_t__ VLAN_HLEN ;
 scalar_t__ needs_copy (struct rx_ring_info*,scalar_t__) ;
 scalar_t__ net_ratelimit () ;
 struct sky2_port* netdev_priv (struct net_device*) ;
 int netif_info (struct sky2_port*,int ,struct net_device*,char*,int,scalar_t__) ;
 int netif_printk (struct sky2_port*,int ,int ,struct net_device*,char*,int,int,scalar_t__) ;
 int prefetch (struct rx_ring_info*) ;
 struct sk_buff* receive_copy (struct sky2_port*,struct rx_ring_info*,scalar_t__) ;
 struct sk_buff* receive_new (struct sky2_port*,struct rx_ring_info*,scalar_t__) ;
 int rx_err ;
 int rx_status ;
 scalar_t__ skb_vlan_tag_present (int ) ;
 int sky2_rx_submit (struct sky2_port*,struct rx_ring_info*) ;

__attribute__((used)) static struct sk_buff *sky2_receive(struct net_device *dev,
        u16 length, u32 status)
{
  struct sky2_port *sky2 = netdev_priv(dev);
 struct rx_ring_info *re = sky2->rx_ring + sky2->rx_next;
 struct sk_buff *skb = ((void*)0);
 u16 count = (status & GMR_FS_LEN) >> 16;

 netif_printk(sky2, rx_status, KERN_DEBUG, dev,
       "rx slot %u status 0x%x len %d\n",
       sky2->rx_next, status, length);

 sky2->rx_next = (sky2->rx_next + 1) % sky2->rx_pending;
 prefetch(sky2->rx_ring + sky2->rx_next);

 if (skb_vlan_tag_present(re->skb))
  count -= VLAN_HLEN;





 if (sky2->hw->chip_id == CHIP_ID_YUKON_FE_P &&
     sky2->hw->chip_rev == CHIP_REV_YU_FE2_A0 &&
     length != count)
  goto okay;

 if (status & GMR_FS_ANY_ERR)
  goto error;

 if (!(status & GMR_FS_RX_OK))
  goto resubmit;


 if (length != count)
  goto error;

okay:
 if (needs_copy(re, length))
  skb = receive_copy(sky2, re, length);
 else
  skb = receive_new(sky2, re, length);

 dev->stats.rx_dropped += (skb == ((void*)0));

resubmit:
 sky2_rx_submit(sky2, re);

 return skb;

error:
 ++dev->stats.rx_errors;

 if (net_ratelimit())
  netif_info(sky2, rx_err, dev,
      "rx error, status 0x%x length %d\n", status, length);

 goto resubmit;
}
