
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ar5523_tx_cmd {TYPE_1__* urb_tx; int buf_tx; } ;
struct ar5523 {int dev; struct ar5523_tx_cmd tx_cmd; } ;
struct TYPE_2__ {int transfer_dma; } ;


 int AR5523_MAX_RXCMDSZ ;
 int usb_free_coherent (int ,int ,int ,int ) ;
 int usb_free_urb (TYPE_1__*) ;

__attribute__((used)) static void ar5523_free_tx_cmd(struct ar5523 *ar)
{
 struct ar5523_tx_cmd *cmd = &ar->tx_cmd;

 usb_free_coherent(ar->dev, AR5523_MAX_RXCMDSZ, cmd->buf_tx,
     cmd->urb_tx->transfer_dma);
 usb_free_urb(cmd->urb_tx);
}
