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
struct team_port {TYPE_1__* dev; } ;
struct team {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  priv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_TEAM_PORT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct team *team, struct team_port *port)
{
	FUNC0(port->dev, team->dev);
	port->dev->priv_flags &= ~IFF_TEAM_PORT;
}