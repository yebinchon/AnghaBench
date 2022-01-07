
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int* data; int len; } ;
struct kim_data_s {int kim_rcvd; scalar_t__ rx_count; struct sk_buff* rx_skb; int rx_state; int resp_buffer; } ;


 int ST_W4_PACKET_TYPE ;
 int complete_all (int *) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (int ,int*,int ) ;
 int pr_err (char*,...) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void validate_firmware_response(struct kim_data_s *kim_gdata)
{
 struct sk_buff *skb = kim_gdata->rx_skb;
 if (!skb)
  return;





 if (skb->data[2] == 0x01 && skb->data[3] == 0x01 &&
   skb->data[4] == 0x10 && skb->data[5] == 0x00) {

  memcpy(kim_gdata->resp_buffer,
    kim_gdata->rx_skb->data,
    kim_gdata->rx_skb->len);
  kim_gdata->rx_state = ST_W4_PACKET_TYPE;
  kim_gdata->rx_skb = ((void*)0);
  kim_gdata->rx_count = 0;
 } else if (unlikely(skb->data[5] != 0)) {
  pr_err("no proper response during fw download");
  pr_err("data6 %x", skb->data[5]);
  kfree_skb(skb);
  return;
 }

 complete_all(&kim_gdata->kim_rcvd);
 kfree_skb(skb);
}
