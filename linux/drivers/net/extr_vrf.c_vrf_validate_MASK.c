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
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int EINVAL ; 
 scalar_t__ ETH_ALEN ; 
 size_t IFLA_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr*) ; 
 scalar_t__ FUNC3 (struct nlattr*) ; 

__attribute__((used)) static int FUNC4(struct nlattr *tb[], struct nlattr *data[],
			struct netlink_ext_ack *extack)
{
	if (tb[IFLA_ADDRESS]) {
		if (FUNC3(tb[IFLA_ADDRESS]) != ETH_ALEN) {
			FUNC0(extack, "Invalid hardware address");
			return -EINVAL;
		}
		if (!FUNC1(FUNC2(tb[IFLA_ADDRESS]))) {
			FUNC0(extack, "Invalid hardware address");
			return -EADDRNOTAVAIL;
		}
	}
	return 0;
}