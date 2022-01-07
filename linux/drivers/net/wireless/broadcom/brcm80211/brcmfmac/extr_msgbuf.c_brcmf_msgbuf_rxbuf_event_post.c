
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct brcmf_msgbuf {scalar_t__ cur_eventbuf; scalar_t__ max_eventbuf; } ;


 scalar_t__ brcmf_msgbuf_rxbuf_ctrl_post (struct brcmf_msgbuf*,int,scalar_t__) ;

__attribute__((used)) static void brcmf_msgbuf_rxbuf_event_post(struct brcmf_msgbuf *msgbuf)
{
 u32 count;

 count = msgbuf->max_eventbuf - msgbuf->cur_eventbuf;
 count = brcmf_msgbuf_rxbuf_ctrl_post(msgbuf, 1, count);
 msgbuf->cur_eventbuf += count;
}
