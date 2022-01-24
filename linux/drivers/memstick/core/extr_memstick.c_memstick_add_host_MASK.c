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
struct memstick_host {int id; int /*<<< orphan*/  (* set_param ) (struct memstick_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int /*<<< orphan*/  MEMSTICK_POWER ; 
 int /*<<< orphan*/  MEMSTICK_POWER_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct memstick_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct memstick_host*) ; 
 int /*<<< orphan*/  memstick_host_idr ; 
 int /*<<< orphan*/  memstick_host_lock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct memstick_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(struct memstick_host *host)
{
	int rc;

	FUNC3(GFP_KERNEL);
	FUNC7(&memstick_host_lock);

	rc = FUNC2(&memstick_host_idr, host, 0, 0, GFP_NOWAIT);
	if (rc >= 0)
		host->id = rc;

	FUNC8(&memstick_host_lock);
	FUNC4();
	if (rc < 0)
		return rc;

	FUNC0(&host->dev, "memstick%u", host->id);

	rc = FUNC1(&host->dev);
	if (rc) {
		FUNC7(&memstick_host_lock);
		FUNC5(&memstick_host_idr, host->id);
		FUNC8(&memstick_host_lock);
		return rc;
	}

	host->set_param(host, MEMSTICK_POWER, MEMSTICK_POWER_OFF);
	FUNC6(host);
	return 0;
}