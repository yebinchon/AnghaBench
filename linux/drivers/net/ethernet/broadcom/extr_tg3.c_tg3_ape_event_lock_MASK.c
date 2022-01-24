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
struct tg3 {int dummy; } ;

/* Variables and functions */
 int APE_EVENT_STATUS_EVENT_PENDING ; 
 int EBUSY ; 
 int /*<<< orphan*/  TG3_APE_EVENT_STATUS ; 
 int /*<<< orphan*/  TG3_APE_LOCK_MEM ; 
 scalar_t__ FUNC0 (struct tg3*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct tg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct tg3 *tp, u32 timeout_us)
{
	u32 apedata;

	while (timeout_us) {
		if (FUNC0(tp, TG3_APE_LOCK_MEM))
			return -EBUSY;

		apedata = FUNC1(tp, TG3_APE_EVENT_STATUS);
		if (!(apedata & APE_EVENT_STATUS_EVENT_PENDING))
			break;

		FUNC2(tp, TG3_APE_LOCK_MEM);

		FUNC3(10);
		timeout_us -= (timeout_us > 10) ? 10 : timeout_us;
	}

	return timeout_us ? 0 : -EBUSY;
}