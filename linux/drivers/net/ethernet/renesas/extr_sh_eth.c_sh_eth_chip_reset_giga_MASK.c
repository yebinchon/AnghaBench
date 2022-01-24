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
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static void FUNC5(struct net_device *ndev)
{
	u32 mahr[2], malr[2];
	int i;

	/* save MAHR and MALR */
	for (i = 0; i < 2; i++) {
		malr[i] = FUNC2((void *)FUNC1(i));
		mahr[i] = FUNC2((void *)FUNC0(i));
	}

	FUNC4(ndev);

	/* restore MAHR and MALR */
	for (i = 0; i < 2; i++) {
		FUNC3(malr[i], (void *)FUNC1(i));
		FUNC3(mahr[i], (void *)FUNC0(i));
	}
}