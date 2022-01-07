
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ar5523_tx_cmd {int olen; int flags; int res; int * odata; int done; TYPE_1__* urb_tx; scalar_t__ buf_tx; } ;
struct ar5523_cmd_hdr {void* magic; int priv; void* code; void* len; } ;
struct ar5523 {int dev; struct ar5523_tx_cmd tx_cmd; } ;
struct TYPE_3__ {int transfer_flags; } ;


 int AR5523_CMD_FLAG_MAGIC ;
 int AR5523_CMD_ID ;
 int ETIMEDOUT ;
 int GFP_KERNEL ;
 int HZ ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int ar5523_cmd_tx_cb ;
 int ar5523_cmd_tx_pipe (int ) ;
 int ar5523_dbg (struct ar5523*,char*,int) ;
 int ar5523_err (struct ar5523*,char*,int,...) ;
 void* cpu_to_be32 (int) ;
 int memcpy (struct ar5523_cmd_hdr*,void const*,int) ;
 int memset (struct ar5523_cmd_hdr*,int ,int) ;
 int usb_fill_bulk_urb (TYPE_1__*,int ,int ,scalar_t__,int,int ,struct ar5523_tx_cmd*) ;
 int usb_submit_urb (TYPE_1__*,int ) ;
 int wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static int ar5523_cmd(struct ar5523 *ar, u32 code, const void *idata,
        int ilen, void *odata, int olen, int flags)
{
 struct ar5523_cmd_hdr *hdr;
 struct ar5523_tx_cmd *cmd = &ar->tx_cmd;
 int xferlen, error;


 xferlen = (sizeof(struct ar5523_cmd_hdr) + ilen + 3) & ~3;

 hdr = (struct ar5523_cmd_hdr *)cmd->buf_tx;
 memset(hdr, 0, sizeof(struct ar5523_cmd_hdr));
 hdr->len = cpu_to_be32(xferlen);
 hdr->code = cpu_to_be32(code);
 hdr->priv = AR5523_CMD_ID;

 if (flags & AR5523_CMD_FLAG_MAGIC)
  hdr->magic = cpu_to_be32(1 << 24);
 memcpy(hdr + 1, idata, ilen);

 cmd->odata = odata;
 cmd->olen = olen;
 cmd->flags = flags;

 ar5523_dbg(ar, "do cmd %02x\n", code);

 usb_fill_bulk_urb(cmd->urb_tx, ar->dev, ar5523_cmd_tx_pipe(ar->dev),
     cmd->buf_tx, xferlen, ar5523_cmd_tx_cb, cmd);
 cmd->urb_tx->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;

 error = usb_submit_urb(cmd->urb_tx, GFP_KERNEL);
 if (error) {
  ar5523_err(ar, "could not send command 0x%x, error=%d\n",
      code, error);
  return error;
 }

 if (!wait_for_completion_timeout(&cmd->done, 2 * HZ)) {
  cmd->odata = ((void*)0);
  ar5523_err(ar, "timeout waiting for command %02x reply\n",
      code);
  cmd->res = -ETIMEDOUT;
 }
 return cmd->res;
}
