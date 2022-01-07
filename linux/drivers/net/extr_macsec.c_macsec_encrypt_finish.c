
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int protocol; int dev; } ;
struct net_device {int dummy; } ;
struct macsec_dev {int real_dev; } ;
struct TYPE_2__ {int h_proto; } ;


 TYPE_1__* eth_hdr (struct sk_buff*) ;
 struct macsec_dev* netdev_priv (struct net_device*) ;
 int skb_reset_mac_header (struct sk_buff*) ;

__attribute__((used)) static void macsec_encrypt_finish(struct sk_buff *skb, struct net_device *dev)
{
 struct macsec_dev *macsec = netdev_priv(dev);

 skb->dev = macsec->real_dev;
 skb_reset_mac_header(skb);
 skb->protocol = eth_hdr(skb)->h_proto;
}
