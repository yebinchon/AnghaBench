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
struct memstick_host {int dummy; } ;
struct jmb38x_ms_host {int /*<<< orphan*/  addr; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct memstick_host*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct memstick_host*) ; 
 struct jmb38x_ms_host* FUNC3 (struct memstick_host*) ; 

__attribute__((used)) static void FUNC4(struct memstick_host *msh)
{
	struct jmb38x_ms_host *host = FUNC3(msh);

	FUNC0(host->irq, msh);
	FUNC1(host->addr);
	FUNC2(msh);
}