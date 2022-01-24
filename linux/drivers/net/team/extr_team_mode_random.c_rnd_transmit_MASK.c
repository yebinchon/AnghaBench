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
struct team {int /*<<< orphan*/  en_port_count; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct team*,struct team_port*,struct sk_buff*) ; 
 struct team_port* FUNC3 (struct team*,struct team_port*) ; 
 struct team_port* FUNC4 (struct team*,int) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static bool FUNC6(struct team *team, struct sk_buff *skb)
{
	struct team_port *port;
	int port_index;

	port_index = FUNC1(team->en_port_count);
	port = FUNC4(team, port_index);
	if (FUNC5(!port))
		goto drop;
	port = FUNC3(team, port);
	if (FUNC5(!port))
		goto drop;
	if (FUNC2(team, port, skb))
		return false;
	return true;

drop:
	FUNC0(skb);
	return false;
}