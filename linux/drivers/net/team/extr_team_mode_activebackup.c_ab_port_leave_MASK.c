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
struct TYPE_2__ {int /*<<< orphan*/  ap_opt_inst_info; struct team_port* active_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct team_port*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (struct team*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct team *team, struct team_port *port)
{
	if (FUNC1(team)->active_port == port) {
		FUNC0(FUNC1(team)->active_port, NULL);
		FUNC2(FUNC1(team)->ap_opt_inst_info);
	}
}