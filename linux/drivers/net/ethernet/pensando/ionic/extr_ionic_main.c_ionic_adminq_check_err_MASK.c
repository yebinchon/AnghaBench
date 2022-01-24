#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct ionic_lif {struct net_device* netdev; } ;
struct TYPE_7__ {int /*<<< orphan*/  opcode; } ;
struct TYPE_8__ {TYPE_3__ cmd; } ;
struct TYPE_5__ {scalar_t__ status; } ;
struct TYPE_6__ {TYPE_1__ comp; } ;
struct ionic_admin_ctx {TYPE_4__ cmd; TYPE_2__ comp; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct ionic_lif*) ; 
 int FUNC1 (scalar_t__) ; 
 char* FUNC2 (scalar_t__) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,char const*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC5(struct ionic_lif *lif,
				  struct ionic_admin_ctx *ctx,
				  bool timeout)
{
	struct net_device *netdev = lif->netdev;
	const char *opcode_str;
	const char *status_str;
	int err = 0;

	if (ctx->comp.comp.status || timeout) {
		opcode_str = FUNC3(ctx->cmd.cmd.opcode);
		status_str = FUNC2(ctx->comp.comp.status);
		err = timeout ? -ETIMEDOUT :
				FUNC1(ctx->comp.comp.status);

		FUNC4(netdev, "%s (%d) failed: %s (%d)\n",
			   opcode_str, ctx->cmd.cmd.opcode,
			   timeout ? "TIMEOUT" : status_str, err);

		if (timeout)
			FUNC0(lif);
	}

	return err;
}