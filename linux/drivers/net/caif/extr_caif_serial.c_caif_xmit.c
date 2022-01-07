
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_4__ {scalar_t__ qlen; } ;
struct TYPE_3__ {int (* flowctrl ) (int ,int ) ;} ;
struct ser_device {TYPE_2__ head; int dev; TYPE_1__ common; int state; } ;
struct net_device {int dummy; } ;


 int BUG_ON (int ) ;
 int CAIF_FLOW_OFF_SENT ;
 int OFF ;
 scalar_t__ SEND_QUEUE_HIGH ;
 int handle_tx (struct ser_device*) ;
 struct ser_device* netdev_priv (struct net_device*) ;
 int skb_queue_tail (TYPE_2__*,struct sk_buff*) ;
 int stub1 (int ,int ) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static int caif_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct ser_device *ser;

 BUG_ON(dev == ((void*)0));
 ser = netdev_priv(dev);


 if (ser->head.qlen > SEND_QUEUE_HIGH &&
  !test_and_set_bit(CAIF_FLOW_OFF_SENT, &ser->state) &&
  ser->common.flowctrl != ((void*)0))

  ser->common.flowctrl(ser->dev, OFF);

 skb_queue_tail(&ser->head, skb);
 return handle_tx(ser);
}
