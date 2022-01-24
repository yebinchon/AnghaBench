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
struct kref {int dummy; } ;
struct em28xx {scalar_t__ ts; struct em28xx* alt_max_pkt_size_isoc; int /*<<< orphan*/  disconnected; TYPE_1__* intf; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ PRIMARY_TS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct em28xx*) ; 
 int /*<<< orphan*/  FUNC2 (struct em28xx*) ; 
 struct em28xx* FUNC3 (struct kref*) ; 

void FUNC4(struct kref *ref)
{
	struct em28xx *dev = FUNC3(ref);

	FUNC0(&dev->intf->dev, "Freeing device\n");

	if (!dev->disconnected)
		FUNC1(dev);

	if (dev->ts == PRIMARY_TS)
		FUNC2(dev->alt_max_pkt_size_isoc);

	FUNC2(dev);
}