
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;


 int netdev2adap (struct net_device*) ;
 int t4_crypto_send (int ,struct sk_buff*) ;

int cxgb4_crypto_send(struct net_device *dev, struct sk_buff *skb)
{
 return t4_crypto_send(netdev2adap(dev), skb);
}
