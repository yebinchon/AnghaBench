#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct ar5523_tx_cmd {int olen; int flags; int res; int /*<<< orphan*/ * odata; int /*<<< orphan*/  done; TYPE_1__* urb_tx; scalar_t__ buf_tx; } ;
struct ar5523_cmd_hdr {void* magic; int /*<<< orphan*/  priv; void* code; void* len; } ;
struct ar5523 {int /*<<< orphan*/  dev; struct ar5523_tx_cmd tx_cmd; } ;
struct TYPE_3__ {int /*<<< orphan*/  transfer_flags; } ;

/* Variables and functions */
 int AR5523_CMD_FLAG_MAGIC ; 
 int /*<<< orphan*/  AR5523_CMD_ID ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  ar5523_cmd_tx_cb ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ar5523*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ar5523*,char*,int,...) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ar5523_cmd_hdr*,void const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ar5523_cmd_hdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,struct ar5523_tx_cmd*) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC9(struct ar5523 *ar, u32 code, const void *idata,
		      int ilen, void *odata, int olen, int flags)
{
	struct ar5523_cmd_hdr *hdr;
	struct ar5523_tx_cmd *cmd = &ar->tx_cmd;
	int xferlen, error;

	/* always bulk-out a multiple of 4 bytes */
	xferlen = (sizeof(struct ar5523_cmd_hdr) + ilen + 3) & ~3;

	hdr = (struct ar5523_cmd_hdr *)cmd->buf_tx;
	FUNC5(hdr, 0, sizeof(struct ar5523_cmd_hdr));
	hdr->len  = FUNC3(xferlen);
	hdr->code = FUNC3(code);
	hdr->priv = AR5523_CMD_ID;

	if (flags & AR5523_CMD_FLAG_MAGIC)
		hdr->magic = FUNC3(1 << 24);
	FUNC4(hdr + 1, idata, ilen);

	cmd->odata = odata;
	cmd->olen = olen;
	cmd->flags = flags;

	FUNC1(ar, "do cmd %02x\n", code);

	FUNC6(cmd->urb_tx, ar->dev, FUNC0(ar->dev),
			  cmd->buf_tx, xferlen, ar5523_cmd_tx_cb, cmd);
	cmd->urb_tx->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;

	error = FUNC7(cmd->urb_tx, GFP_KERNEL);
	if (error) {
		FUNC2(ar, "could not send command 0x%x, error=%d\n",
			   code, error);
		return error;
	}

	if (!FUNC8(&cmd->done, 2 * HZ)) {
		cmd->odata = NULL;
		FUNC2(ar, "timeout waiting for command %02x reply\n",
			   code);
		cmd->res = -ETIMEDOUT;
	}
	return cmd->res;
}