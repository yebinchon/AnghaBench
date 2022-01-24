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
typedef  int /*<<< orphan*/  u32 ;
struct macvlan_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MACVLAN_MC_FILTER_BITS ; 
 int /*<<< orphan*/  FUNC0 (unsigned char const*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct macvlan_dev const*) ; 

__attribute__((used)) static unsigned int FUNC3(const struct macvlan_dev *vlan,
			    const unsigned char *addr)
{
	u32 val = FUNC0(addr + 2);

	val ^= FUNC2(vlan);
	return FUNC1(val, MACVLAN_MC_FILTER_BITS);
}