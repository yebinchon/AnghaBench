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
struct team_port {int dummy; } ;
struct team {int dummy; } ;
struct lb_priv {TYPE_1__* ex; } ;
struct lb_port_mapping {int /*<<< orphan*/  opt_inst_info; int /*<<< orphan*/  port; } ;
struct TYPE_2__ {struct lb_port_mapping* tx_hash_to_port_mapping; } ;

/* Variables and functions */
 int LB_TX_HASHTABLE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct lb_priv* FUNC1 (struct team*) ; 
 struct team_port* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct team*) ; 

__attribute__((used)) static void FUNC5(struct team *team,
						 struct team_port *port)
{
	struct lb_priv *lb_priv = FUNC1(team);
	bool changed = false;
	int i;

	for (i = 0; i < LB_TX_HASHTABLE_SIZE; i++) {
		struct lb_port_mapping *pm;

		pm = &lb_priv->ex->tx_hash_to_port_mapping[i];
		if (FUNC2(pm->port) == port) {
			FUNC0(pm->port, NULL);
			FUNC3(pm->opt_inst_info);
			changed = true;
		}
	}
	if (changed)
		FUNC4(team);
}