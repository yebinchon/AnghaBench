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
struct TYPE_2__ {struct device* parent; int /*<<< orphan*/ * class; } ;
struct memstick_host {TYPE_1__ dev; int /*<<< orphan*/  media_checker; int /*<<< orphan*/  lock; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 struct memstick_host* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  memstick_check ; 
 int /*<<< orphan*/  memstick_host_class ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct memstick_host *FUNC4(unsigned int extra,
					  struct device *dev)
{
	struct memstick_host *host;

	host = FUNC2(sizeof(struct memstick_host) + extra, GFP_KERNEL);
	if (host) {
		FUNC3(&host->lock);
		FUNC0(&host->media_checker, memstick_check);
		host->dev.class = &memstick_host_class;
		host->dev.parent = dev;
		FUNC1(&host->dev);
	}
	return host;
}