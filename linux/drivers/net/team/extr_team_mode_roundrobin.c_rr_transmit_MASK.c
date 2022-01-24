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
struct TYPE_2__ {int /*<<< orphan*/  sent_packets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 TYPE_1__* FUNC1 (struct team*) ; 
 scalar_t__ FUNC2 (struct team*,struct team_port*,struct sk_buff*) ; 
 struct team_port* FUNC3 (struct team*,struct team_port*) ; 
 struct team_port* FUNC4 (struct team*,int) ; 
 int FUNC5 (struct team*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static bool FUNC7(struct team *team, struct sk_buff *skb)
{
	struct team_port *port;
	int port_index;

	port_index = FUNC5(team,
					    FUNC1(team)->sent_packets++);
	port = FUNC4(team, port_index);
	if (FUNC6(!port))
		goto drop;
	port = FUNC3(team, port);
	if (FUNC6(!port))
		goto drop;
	if (FUNC2(team, port, skb))
		return false;
	return true;

drop:
	FUNC0(skb);
	return false;
}