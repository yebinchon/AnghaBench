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
struct TYPE_2__ {char* str_val; } ;
struct team_gsetter_ctx {TYPE_1__ data; } ;
struct team {int /*<<< orphan*/  lock; } ;
struct lb_priv {int /*<<< orphan*/  select_tx_port_func; } ;
typedef  int /*<<< orphan*/  lb_select_tx_port_func_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct lb_priv* FUNC1 (struct team*) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct team *team, struct team_gsetter_ctx *ctx)
{
	struct lb_priv *lb_priv = FUNC1(team);
	lb_select_tx_port_func_t *func;
	char *name;

	func = FUNC4(lb_priv->select_tx_port_func,
					 FUNC3(&team->lock));
	name = FUNC2(func);
	FUNC0(!name);
	ctx->data.str_val = name;
	return 0;
}