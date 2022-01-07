
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ipaq_micro_rxdev {int state; int id; int len; size_t index; int chksum; int* buf; } ;
struct ipaq_micro {struct ipaq_micro_rxdev rx; } ;


 int CHAR_SOF ;




 int micro_rx_msg (struct ipaq_micro*,int,size_t,int*) ;

__attribute__((used)) static void micro_process_char(struct ipaq_micro *micro, u8 ch)
{
 struct ipaq_micro_rxdev *rx = &micro->rx;

 switch (rx->state) {
 case 128:
  if (ch == CHAR_SOF)
   rx->state = 129;
  break;
 case 129:
  rx->id = (ch & 0xf0) >> 4;
  rx->len = (ch & 0x0f);
  rx->index = 0;
  rx->chksum = ch;
  rx->state = (rx->len > 0) ? 130 : 131;
  break;
 case 130:
  rx->chksum += ch;
  rx->buf[rx->index] = ch;
  if (++rx->index == rx->len)
   rx->state = 131;
  break;
 case 131:
  if (ch == rx->chksum)
   micro_rx_msg(micro, rx->id, rx->len, rx->buf);
  rx->state = 128;
  break;
 }
}
