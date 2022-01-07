
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct fmdev {int tx_task; int tx_q; int flag; } ;
struct fm_cmd_msg_hdr {int len; int dlen; int rd_wr; scalar_t__ op; int hdr; } ;
struct completion {int dummy; } ;
typedef int __be16 ;
struct TYPE_2__ {struct completion* completion; scalar_t__ fm_op; } ;


 int EINVAL ;
 int ENOMEM ;
 int FM_CMD_MSG_HDR_SIZE ;
 int FM_FW_DW_INPROGRESS ;
 scalar_t__ FM_INTERRUPT ;
 int FM_INTTASK_RUNNING ;
 int FM_PKT_LOGICAL_CHAN_NUMBER ;
 int GFP_ATOMIC ;
 struct sk_buff* alloc_skb (int,int ) ;
 int cpu_to_be16 (int ) ;
 TYPE_1__* fm_cb (struct sk_buff*) ;
 int fmerr (char*,...) ;
 struct fm_cmd_msg_hdr* skb_put (struct sk_buff*,int) ;
 int skb_put_data (struct sk_buff*,void*,int) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int tasklet_schedule (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int fm_send_cmd(struct fmdev *fmdev, u8 fm_op, u16 type, void *payload,
  int payload_len, struct completion *wait_completion)
{
 struct sk_buff *skb;
 struct fm_cmd_msg_hdr *hdr;
 int size;

 if (fm_op >= FM_INTERRUPT) {
  fmerr("Invalid fm opcode - %d\n", fm_op);
  return -EINVAL;
 }
 if (test_bit(FM_FW_DW_INPROGRESS, &fmdev->flag) && payload == ((void*)0)) {
  fmerr("Payload data is NULL during fw download\n");
  return -EINVAL;
 }
 if (!test_bit(FM_FW_DW_INPROGRESS, &fmdev->flag))
  size =
      FM_CMD_MSG_HDR_SIZE + ((payload == ((void*)0)) ? 0 : payload_len);
 else
  size = payload_len;

 skb = alloc_skb(size, GFP_ATOMIC);
 if (!skb) {
  fmerr("No memory to create new SKB\n");
  return -ENOMEM;
 }




 if (!test_bit(FM_FW_DW_INPROGRESS, &fmdev->flag) ||
   test_bit(FM_INTTASK_RUNNING, &fmdev->flag)) {

  hdr = skb_put(skb, FM_CMD_MSG_HDR_SIZE);
  hdr->hdr = FM_PKT_LOGICAL_CHAN_NUMBER;


  hdr->len = ((payload == ((void*)0)) ? 0 : payload_len) + 3;


  hdr->op = fm_op;


  hdr->rd_wr = type;
  hdr->dlen = payload_len;
  fm_cb(skb)->fm_op = fm_op;






  if (payload != ((void*)0))
   *(__be16 *)payload = cpu_to_be16(*(u16 *)payload);

 } else if (payload != ((void*)0)) {
  fm_cb(skb)->fm_op = *((u8 *)payload + 2);
 }
 if (payload != ((void*)0))
  skb_put_data(skb, payload, payload_len);

 fm_cb(skb)->completion = wait_completion;
 skb_queue_tail(&fmdev->tx_q, skb);
 tasklet_schedule(&fmdev->tx_task);

 return 0;
}
