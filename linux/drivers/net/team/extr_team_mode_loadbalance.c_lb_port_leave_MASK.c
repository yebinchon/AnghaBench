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
struct team_port {int dummy; } ;
struct team {int dummy; } ;
struct lb_port_priv {int /*<<< orphan*/  pcpu_stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct lb_port_priv* FUNC1 (struct team_port*) ; 

__attribute__((used)) static void FUNC2(struct team *team, struct team_port *port)
{
	struct lb_port_priv *lb_port_priv = FUNC1(port);

	FUNC0(lb_port_priv->pcpu_stats);
}