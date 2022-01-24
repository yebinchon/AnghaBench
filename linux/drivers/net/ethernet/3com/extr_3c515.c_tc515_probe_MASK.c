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
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 struct net_device* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ corkscrew_debug ; 
 struct net_device* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  version ; 

struct net_device *FUNC3(int unit)
{
	struct net_device *dev = FUNC1(unit);
	static int printed;

	if (!dev)
		return FUNC0(-ENODEV);

	if (corkscrew_debug > 0 && !printed) {
		printed = 1;
		FUNC2("%s", version);
	}

	return dev;
}