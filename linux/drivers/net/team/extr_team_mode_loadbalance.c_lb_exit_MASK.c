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
struct team {int dummy; } ;
struct lb_priv {TYPE_2__* ex; int /*<<< orphan*/  pcpu_stats; } ;
struct TYPE_3__ {int /*<<< orphan*/  refresh_dw; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct lb_priv* FUNC3 (struct team*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct team*) ; 
 int /*<<< orphan*/  lb_options ; 
 int /*<<< orphan*/  FUNC6 (struct team*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct team *team)
{
	struct lb_priv *lb_priv = FUNC3(team);

	FUNC6(team, lb_options,
				FUNC0(lb_options));
	FUNC5(team);
	FUNC1(&lb_priv->ex->stats.refresh_dw);
	FUNC2(lb_priv->pcpu_stats);
	FUNC4(lb_priv->ex);
}