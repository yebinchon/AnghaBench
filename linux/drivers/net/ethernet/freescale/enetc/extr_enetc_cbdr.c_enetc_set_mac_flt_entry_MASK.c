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
typedef  int u32 ;
typedef  int u16 ;
struct enetc_si {int dummy; } ;
struct enetc_cbd {int cls; void** addr; void** opt; int /*<<< orphan*/  index; int /*<<< orphan*/  status_flags; } ;
typedef  int /*<<< orphan*/  cbd ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  ENETC_CBD_FLAGS_SF ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (int) ; 
 int FUNC3 (struct enetc_si*,struct enetc_cbd*) ; 
 int /*<<< orphan*/  FUNC4 (struct enetc_cbd*,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct enetc_si *si, int index,
			    char *mac_addr, int si_map)
{
	struct enetc_cbd cbd;
	u32 upper;
	u16 lower;

	FUNC4(&cbd, 0, sizeof(cbd));

	/* fill up the "set" descriptor */
	cbd.cls = 1;
	cbd.status_flags = ENETC_CBD_FLAGS_SF;
	cbd.index = FUNC1(index);
	cbd.opt[3] = FUNC2(si_map);
	/* enable entry */
	cbd.opt[0] = FUNC2(FUNC0(31));

	upper = *(const u32 *)mac_addr;
	lower = *(const u16 *)(mac_addr + 4);
	cbd.addr[0] = FUNC2(upper);
	cbd.addr[1] = FUNC2(lower);

	return FUNC3(si, &cbd);
}