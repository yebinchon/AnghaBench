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
struct port_info {struct adapter* adapter; } ;
struct device {int dummy; } ;
struct adapter {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 size_t EINVAL ; 
 size_t EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (char const*,int /*<<< orphan*/ ,unsigned int*) ; 
 struct port_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 size_t FUNC5 (struct adapter*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *d,
			     const char *buf, size_t len, int sched)
{
	struct port_info *pi = FUNC2(FUNC6(d));
	struct adapter *adap = pi->adapter;
	unsigned int val;
	ssize_t ret;

	if (!FUNC0(CAP_NET_ADMIN))
		return -EPERM;

	ret = FUNC1(buf, 0, &val);
	if (ret)
		return ret;
	if (val > 10000000)
		return -EINVAL;

	FUNC3();
	ret = FUNC5(adap, val, sched);
	if (!ret)
		ret = len;
	FUNC4();
	return ret;
}