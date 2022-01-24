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
struct geneve_sock {int /*<<< orphan*/  sock; int /*<<< orphan*/  list; scalar_t__ refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  UDP_TUNNEL_TYPE_GENEVE ; 
 int /*<<< orphan*/  FUNC0 (struct geneve_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct geneve_sock *gs)
{
	if (!gs || --gs->refcnt)
		return;

	FUNC1(&gs->list);
	FUNC2(gs->sock, UDP_TUNNEL_TYPE_GENEVE);
	FUNC3(gs->sock);
	FUNC0(gs, rcu);
}