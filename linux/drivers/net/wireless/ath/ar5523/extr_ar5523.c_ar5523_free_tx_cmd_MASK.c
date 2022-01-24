#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ar5523_tx_cmd {TYPE_1__* urb_tx; int /*<<< orphan*/  buf_tx; } ;
struct ar5523 {int /*<<< orphan*/  dev; struct ar5523_tx_cmd tx_cmd; } ;
struct TYPE_2__ {int /*<<< orphan*/  transfer_dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR5523_MAX_RXCMDSZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(struct ar5523 *ar)
{
	struct ar5523_tx_cmd *cmd = &ar->tx_cmd;

	FUNC0(ar->dev, AR5523_MAX_RXCMDSZ, cmd->buf_tx,
			  cmd->urb_tx->transfer_dma);
	FUNC1(cmd->urb_tx);
}