
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ar5523_tx_cmd {TYPE_1__* urb_tx; int buf_tx; int done; struct ar5523* ar; } ;
struct ar5523 {int dev; struct ar5523_tx_cmd tx_cmd; } ;
struct TYPE_3__ {int transfer_dma; } ;


 int AR5523_MAX_TXCMDSZ ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int init_completion (int *) ;
 int usb_alloc_coherent (int ,int ,int ,int *) ;
 TYPE_1__* usb_alloc_urb (int ,int ) ;
 int usb_free_urb (TYPE_1__*) ;

__attribute__((used)) static int ar5523_alloc_tx_cmd(struct ar5523 *ar)
{
 struct ar5523_tx_cmd *cmd = &ar->tx_cmd;

 cmd->ar = ar;
 init_completion(&cmd->done);

 cmd->urb_tx = usb_alloc_urb(0, GFP_KERNEL);
 if (!cmd->urb_tx)
  return -ENOMEM;
 cmd->buf_tx = usb_alloc_coherent(ar->dev, AR5523_MAX_TXCMDSZ,
      GFP_KERNEL,
      &cmd->urb_tx->transfer_dma);
 if (!cmd->buf_tx) {
  usb_free_urb(cmd->urb_tx);
  return -ENOMEM;
 }
 return 0;
}
