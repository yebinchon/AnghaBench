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
struct sk_buff {int dummy; } ;
struct lb_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lb_priv*,unsigned char) ; 
 struct team_port* FUNC1 (struct team*,struct lb_priv*,struct sk_buff*,unsigned char) ; 
 scalar_t__ FUNC2 (struct team_port*) ; 
 struct team_port* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct team_port *FUNC4(struct team *team,
						struct lb_priv *lb_priv,
						struct sk_buff *skb,
						unsigned char hash)
{
	struct team_port *port;

	port = FUNC3(FUNC0(lb_priv, hash));
	if (FUNC2(port))
		return port;
	/* If no valid port in the table, fall back to simple hash */
	return FUNC1(team, lb_priv, skb, hash);
}