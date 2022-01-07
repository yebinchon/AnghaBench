
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct htc_packet {struct sk_buff* skb; } ;


 int GFP_KERNEL ;
 int HTC_CONTROL_BUFFER_SIZE ;
 struct sk_buff* __dev_alloc_skb (int ,int ) ;
 int kfree (struct htc_packet*) ;
 struct htc_packet* kzalloc (int,int ) ;

__attribute__((used)) static struct htc_packet *build_htc_txctrl_packet(void)
{
 struct htc_packet *packet = ((void*)0);
 struct sk_buff *skb;

 packet = kzalloc(sizeof(struct htc_packet), GFP_KERNEL);
 if (packet == ((void*)0))
  return ((void*)0);

 skb = __dev_alloc_skb(HTC_CONTROL_BUFFER_SIZE, GFP_KERNEL);

 if (skb == ((void*)0)) {
  kfree(packet);
  return ((void*)0);
 }
 packet->skb = skb;

 return packet;
}
