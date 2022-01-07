
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned int len; int * data; } ;
struct net_device {int dummy; } ;
struct ethhdr {int h_proto; int h_source; int h_dest; } ;
typedef int buffer ;


 int hex_dump_to_buffer (int *,unsigned int,int,int,unsigned char*,int,int) ;
 unsigned int min (unsigned int,unsigned int) ;
 int netdev_dbg (struct net_device*,char*,...) ;
 int ntohs (int ) ;

void xgbe_print_pkt(struct net_device *netdev, struct sk_buff *skb, bool tx_rx)
{
 struct ethhdr *eth = (struct ethhdr *)skb->data;
 unsigned char buffer[128];
 unsigned int i;

 netdev_dbg(netdev, "\n************** SKB dump ****************\n");

 netdev_dbg(netdev, "%s packet of %d bytes\n",
     (tx_rx ? "TX" : "RX"), skb->len);

 netdev_dbg(netdev, "Dst MAC addr: %pM\n", eth->h_dest);
 netdev_dbg(netdev, "Src MAC addr: %pM\n", eth->h_source);
 netdev_dbg(netdev, "Protocol: %#06hx\n", ntohs(eth->h_proto));

 for (i = 0; i < skb->len; i += 32) {
  unsigned int len = min(skb->len - i, 32U);

  hex_dump_to_buffer(&skb->data[i], len, 32, 1,
       buffer, sizeof(buffer), 0);
  netdev_dbg(netdev, "  %#06x: %s\n", i, buffer);
 }

 netdev_dbg(netdev, "\n************** SKB dump ****************\n");
}
