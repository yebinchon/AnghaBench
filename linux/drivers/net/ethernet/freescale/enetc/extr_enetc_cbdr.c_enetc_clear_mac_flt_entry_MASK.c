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
struct enetc_si {int dummy; } ;
struct enetc_cbd {int cls; int /*<<< orphan*/  index; int /*<<< orphan*/  status_flags; } ;
typedef  int /*<<< orphan*/  cbd ;

/* Variables and functions */
 int /*<<< orphan*/  ENETC_CBD_FLAGS_SF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct enetc_si*,struct enetc_cbd*) ; 
 int /*<<< orphan*/  FUNC2 (struct enetc_cbd*,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct enetc_si *si, int index)
{
	struct enetc_cbd cbd;

	FUNC2(&cbd, 0, sizeof(cbd));

	cbd.cls = 1;
	cbd.status_flags = ENETC_CBD_FLAGS_SF;
	cbd.index = FUNC0(index);

	return FUNC1(si, &cbd);
}