#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned int u32_val; } ;
struct team_gsetter_ctx {TYPE_1__ data; } ;
struct team {int dummy; } ;
struct lb_priv {TYPE_2__* ex; } ;
struct TYPE_6__ {unsigned int refresh_interval; int /*<<< orphan*/  refresh_dw; } ;
struct TYPE_5__ {TYPE_3__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct lb_priv* FUNC1 (struct team*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct team *team,
					 struct team_gsetter_ctx *ctx)
{
	struct lb_priv *lb_priv = FUNC1(team);
	unsigned int interval;

	interval = ctx->data.u32_val;
	if (lb_priv->ex->stats.refresh_interval == interval)
		return 0;
	lb_priv->ex->stats.refresh_interval = interval;
	if (interval)
		FUNC2(&lb_priv->ex->stats.refresh_dw, 0);
	else
		FUNC0(&lb_priv->ex->stats.refresh_dw);
	return 0;
}