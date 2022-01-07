
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct tty_struct {TYPE_1__* ops; } ;
struct sk_buff {int len; int data; } ;
struct TYPE_9__ {int (* flowctrl ) (TYPE_4__*,int ) ;} ;
struct TYPE_11__ {scalar_t__ qlen; } ;
struct ser_device {int tx_started; int state; TYPE_4__* dev; TYPE_3__ common; TYPE_5__ head; struct tty_struct* tty; } ;
struct TYPE_8__ {int tx_bytes; int tx_packets; } ;
struct TYPE_10__ {TYPE_2__ stats; } ;
struct TYPE_7__ {int (* write ) (struct tty_struct*,int ,int) ;} ;


 int CAIF_FLOW_OFF_SENT ;
 int CAIF_SENDING ;
 int ON ;
 scalar_t__ SEND_QUEUE_LOW ;
 int WARN_ON (int) ;
 int clear_bit (int ,int *) ;
 int dev_consume_skb_any (struct sk_buff*) ;
 int ldisc_receive (struct tty_struct*,int ,int *,int) ;
 int ser_loop ;
 int ser_write_chunk ;
 struct sk_buff* skb_dequeue (TYPE_5__*) ;
 struct sk_buff* skb_peek (TYPE_5__*) ;
 int skb_pull (struct sk_buff*,int) ;
 int stub1 (struct tty_struct*,int ,int) ;
 int stub2 (TYPE_4__*,int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int tty_write_room (struct tty_struct*) ;
 int update_tty_status (struct ser_device*) ;

__attribute__((used)) static int handle_tx(struct ser_device *ser)
{
 struct tty_struct *tty;
 struct sk_buff *skb;
 int tty_wr, len, room;

 tty = ser->tty;
 ser->tx_started = 1;


 if (test_and_set_bit(CAIF_SENDING, &ser->state))
  return 0;


 while ((skb = skb_peek(&ser->head)) != ((void*)0)) {


  len = skb->len;
  room = tty_write_room(tty);
  if (!room)
   break;
  if (room > ser_write_chunk)
   room = ser_write_chunk;
  if (len > room)
   len = room;


  if (!ser_loop) {
   tty_wr = tty->ops->write(tty, skb->data, len);
   update_tty_status(ser);
  } else {
   tty_wr = len;
   ldisc_receive(tty, skb->data, ((void*)0), len);
  }
  ser->dev->stats.tx_packets++;
  ser->dev->stats.tx_bytes += tty_wr;


  if (tty_wr < 0)
   goto error;

  skb_pull(skb, tty_wr);
  if (skb->len == 0) {
   struct sk_buff *tmp = skb_dequeue(&ser->head);
   WARN_ON(tmp != skb);
   dev_consume_skb_any(skb);
  }
 }

 if (ser->head.qlen <= SEND_QUEUE_LOW &&
  test_and_clear_bit(CAIF_FLOW_OFF_SENT, &ser->state) &&
  ser->common.flowctrl != ((void*)0))
    ser->common.flowctrl(ser->dev, ON);
 clear_bit(CAIF_SENDING, &ser->state);
 return 0;
error:
 clear_bit(CAIF_SENDING, &ser->state);
 return tty_wr;
}
