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
typedef  int u32 ;
struct ocelot_port {struct ocelot* ocelot; } ;
struct ocelot {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANA_AUTOAGE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 (unsigned long) ; 
 int FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct ocelot*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ocelot_port *ocelot_port,
					unsigned long ageing_clock_t)
{
	struct ocelot *ocelot = ocelot_port->ocelot;
	unsigned long ageing_jiffies = FUNC1(ageing_clock_t);
	u32 ageing_time = FUNC2(ageing_jiffies) / 1000;

	FUNC3(ocelot, FUNC0(ageing_time / 2),
		     ANA_AUTOAGE);
}