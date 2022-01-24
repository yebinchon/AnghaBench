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
struct octeon_mbox_cmd {int /*<<< orphan*/  data; } ;
struct octeon_device {int dummy; } ;
struct oct_vf_stats_ctx {int /*<<< orphan*/  status; int /*<<< orphan*/  stats; } ;
struct oct_vf_stats {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct octeon_device *oct,
			     struct octeon_mbox_cmd *cmd, void *arg)
{
	struct oct_vf_stats_ctx *ctx = arg;

	FUNC1(ctx->stats, cmd->data, sizeof(struct oct_vf_stats));
	FUNC0(&ctx->status, 1);
}