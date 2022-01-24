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
struct ar5523_tx_cmd {TYPE_1__* urb_tx; int /*<<< orphan*/  buf_tx; int /*<<< orphan*/  done; struct ar5523* ar; } ;
struct ar5523 {int /*<<< orphan*/  dev; struct ar5523_tx_cmd tx_cmd; } ;
struct TYPE_3__ {int /*<<< orphan*/  transfer_dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR5523_MAX_TXCMDSZ ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(struct ar5523 *ar)
{
	struct ar5523_tx_cmd *cmd = &ar->tx_cmd;

	cmd->ar = ar;
	FUNC0(&cmd->done);

	cmd->urb_tx = FUNC2(0, GFP_KERNEL);
	if (!cmd->urb_tx)
		return -ENOMEM;
	cmd->buf_tx = FUNC1(ar->dev, AR5523_MAX_TXCMDSZ,
					 GFP_KERNEL,
					 &cmd->urb_tx->transfer_dma);
	if (!cmd->buf_tx) {
		FUNC3(cmd->urb_tx);
		return -ENOMEM;
	}
	return 0;
}