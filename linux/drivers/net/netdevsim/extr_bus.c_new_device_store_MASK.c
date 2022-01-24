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
struct nsim_bus_dev {int /*<<< orphan*/  list; } ;
struct bus_type {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 unsigned int INT_MAX ; 
 scalar_t__ FUNC0 (struct nsim_bus_dev*) ; 
 size_t FUNC1 (struct nsim_bus_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nsim_bus_dev_list ; 
 int /*<<< orphan*/  nsim_bus_dev_list_lock ; 
 struct nsim_bus_dev* FUNC5 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (char const*,char*,unsigned int*,unsigned int*) ; 

__attribute__((used)) static ssize_t
FUNC8(struct bus_type *bus, const char *buf, size_t count)
{
	struct nsim_bus_dev *nsim_bus_dev;
	unsigned int port_count;
	unsigned int id;
	int err;

	err = FUNC7(buf, "%u %u", &id, &port_count);
	switch (err) {
	case 1:
		port_count = 1;
		/* fall through */
	case 2:
		if (id > INT_MAX) {
			FUNC6("Value of \"id\" is too big.\n");
			return -EINVAL;
		}
		break;
	default:
		FUNC6("Format for adding new device is \"id port_count\" (uint uint).\n");
		return -EINVAL;
	}
	nsim_bus_dev = FUNC5(id, port_count);
	if (FUNC0(nsim_bus_dev))
		return FUNC1(nsim_bus_dev);

	FUNC3(&nsim_bus_dev_list_lock);
	FUNC2(&nsim_bus_dev->list, &nsim_bus_dev_list);
	FUNC4(&nsim_bus_dev_list_lock);

	return count;
}