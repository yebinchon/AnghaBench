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
struct velocity_info {int /*<<< orphan*/  ip_addr; int /*<<< orphan*/  netdev; } ;
struct in_ifaddr {int /*<<< orphan*/  ifa_address; } ;
struct in_device {int /*<<< orphan*/  ifa_list; } ;

/* Variables and functions */
 int ENOENT ; 
 struct in_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct in_ifaddr* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static inline int FUNC5(struct velocity_info *vptr)
{
	struct in_device *in_dev;
	struct in_ifaddr *ifa;
	int res = -ENOENT;

	FUNC3();
	in_dev = FUNC0(vptr->netdev);
	if (in_dev != NULL) {
		ifa = FUNC2(in_dev->ifa_list);
		if (ifa != NULL) {
			FUNC1(vptr->ip_addr, &ifa->ifa_address, 4);
			res = 0;
		}
	}
	FUNC4();
	return res;
}