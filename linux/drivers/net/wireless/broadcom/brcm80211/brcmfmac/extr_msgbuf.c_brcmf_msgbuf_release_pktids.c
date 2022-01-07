
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct brcmf_msgbuf {scalar_t__ tx_pktids; TYPE_2__* drvr; scalar_t__ rx_pktids; } ;
struct TYPE_4__ {TYPE_1__* bus_if; } ;
struct TYPE_3__ {int dev; } ;


 int brcmf_msgbuf_release_array (int ,scalar_t__) ;

__attribute__((used)) static void brcmf_msgbuf_release_pktids(struct brcmf_msgbuf *msgbuf)
{
 if (msgbuf->rx_pktids)
  brcmf_msgbuf_release_array(msgbuf->drvr->bus_if->dev,
        msgbuf->rx_pktids);
 if (msgbuf->tx_pktids)
  brcmf_msgbuf_release_array(msgbuf->drvr->bus_if->dev,
        msgbuf->tx_pktids);
}
