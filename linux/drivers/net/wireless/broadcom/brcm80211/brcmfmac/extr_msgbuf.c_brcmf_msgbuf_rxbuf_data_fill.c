
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct brcmf_msgbuf {scalar_t__ rxbufpost; scalar_t__ max_rxbufpost; } ;


 scalar_t__ brcmf_msgbuf_rxbuf_data_post (struct brcmf_msgbuf*,scalar_t__) ;

__attribute__((used)) static void
brcmf_msgbuf_rxbuf_data_fill(struct brcmf_msgbuf *msgbuf)
{
 u32 fillbufs;
 u32 retcount;

 fillbufs = msgbuf->max_rxbufpost - msgbuf->rxbufpost;

 while (fillbufs) {
  retcount = brcmf_msgbuf_rxbuf_data_post(msgbuf, fillbufs);
  if (!retcount)
   break;
  msgbuf->rxbufpost += retcount;
  fillbufs -= retcount;
 }
}
