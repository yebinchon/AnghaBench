#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct urb {scalar_t__ status; struct ar5523_tx_cmd* context; } ;
struct ar5523_tx_cmd {int flags; int /*<<< orphan*/  done; scalar_t__ res; struct ar5523* ar; } ;
struct ar5523 {int dummy; } ;

/* Variables and functions */
 int AR5523_CMD_FLAG_READ ; 
 int /*<<< orphan*/  FUNC0 (struct ar5523*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct urb *urb)
{
	struct ar5523_tx_cmd *cmd = urb->context;
	struct ar5523 *ar = cmd->ar;

	if (urb->status) {
		FUNC0(ar, "Failed to TX command. Status = %d\n",
			   urb->status);
		cmd->res = urb->status;
		FUNC1(&cmd->done);
		return;
	}

	if (!(cmd->flags & AR5523_CMD_FLAG_READ)) {
		cmd->res = 0;
		FUNC1(&cmd->done);
	}
}