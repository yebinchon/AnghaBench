#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int ulong ;
struct net_device {int dummy; } ;
struct ionic_lif {struct net_device* netdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  opcode; } ;
struct TYPE_4__ {TYPE_1__ cmd; } ;
struct ionic_admin_ctx {int /*<<< orphan*/  work; TYPE_2__ cmd; } ;

/* Variables and functions */
 scalar_t__ DEVCMD_TIMEOUT ; 
 int HZ ; 
 int FUNC0 (struct ionic_lif*,struct ionic_admin_ctx*,int) ; 
 int FUNC1 (struct ionic_lif*,struct ionic_admin_ctx*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,char const*,int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ *,int) ; 

int FUNC5(struct ionic_lif *lif, struct ionic_admin_ctx *ctx)
{
	struct net_device *netdev = lif->netdev;
	unsigned long remaining;
	const char *name;
	int err;

	err = FUNC1(lif, ctx);
	if (err) {
		name = FUNC2(ctx->cmd.cmd.opcode);
		FUNC3(netdev, "Posting of %s (%d) failed: %d\n",
			   name, ctx->cmd.cmd.opcode, err);
		return err;
	}

	remaining = FUNC4(&ctx->work,
						HZ * (ulong)DEVCMD_TIMEOUT);
	return FUNC0(lif, ctx, (remaining == 0));
}