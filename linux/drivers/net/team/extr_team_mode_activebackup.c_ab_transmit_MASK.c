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
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  active_port; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct team*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct team_port* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct team*,struct team_port*,struct sk_buff*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static bool FUNC5(struct team *team, struct sk_buff *skb)
{
	struct team_port *active_port;

	active_port = FUNC2(FUNC0(team)->active_port);
	if (FUNC4(!active_port))
		goto drop;
	if (FUNC3(team, active_port, skb))
		return false;
	return true;

drop:
	FUNC1(skb);
	return false;
}