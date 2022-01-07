
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int data; } ;
struct net_device {int dummy; } ;
struct bcom_task {int dummy; } ;


 int EAGAIN ;
 int FEC_RX_BUFFER_SIZE ;
 int bcom_queue_full (struct bcom_task*) ;
 int memset (int ,int ,int ) ;
 int mpc52xx_fec_rx_submit (struct net_device*,struct sk_buff*) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,int ) ;

__attribute__((used)) static int mpc52xx_fec_alloc_rx_buffers(struct net_device *dev, struct bcom_task *rxtsk)
{
 struct sk_buff *skb;

 while (!bcom_queue_full(rxtsk)) {
  skb = netdev_alloc_skb(dev, FEC_RX_BUFFER_SIZE);
  if (!skb)
   return -EAGAIN;


  memset(skb->data, 0, FEC_RX_BUFFER_SIZE);
  mpc52xx_fec_rx_submit(dev, skb);
 }
 return 0;
}
