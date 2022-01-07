
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct brcmf_msgbuf {scalar_t__ rxbufpost; scalar_t__ max_rxbufpost; } ;


 scalar_t__ BRCMF_MSGBUF_RXBUFPOST_THRESHOLD ;
 int brcmf_msgbuf_rxbuf_data_fill (struct brcmf_msgbuf*) ;

__attribute__((used)) static void
brcmf_msgbuf_update_rxbufpost_count(struct brcmf_msgbuf *msgbuf, u16 rxcnt)
{
 msgbuf->rxbufpost -= rxcnt;
 if (msgbuf->rxbufpost <= (msgbuf->max_rxbufpost -
      BRCMF_MSGBUF_RXBUFPOST_THRESHOLD))
  brcmf_msgbuf_rxbuf_data_fill(msgbuf);
}
