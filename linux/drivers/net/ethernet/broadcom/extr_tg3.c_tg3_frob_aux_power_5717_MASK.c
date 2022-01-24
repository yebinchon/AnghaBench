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
 int /*<<< orphan*/  ENABLE_APE ; 
 int /*<<< orphan*/  ENABLE_ASF ; 
 int /*<<< orphan*/  TG3_APE_LOCK_GPIO ; 
 int TG3_GPIO_MSG_ALL_DRVR_PRES_MASK ; 
 int TG3_GPIO_MSG_ALL_NEED_VAUX_MASK ; 
 int TG3_GPIO_MSG_NEED_VAUX ; 
 scalar_t__ FUNC0 (struct tg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tg3*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct tg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC4 (struct tg3*) ; 
 int FUNC5 (struct tg3*,int) ; 

__attribute__((used)) static void FUNC6(struct tg3 *tp, bool wol_enable)
{
	u32 msg = 0;

	/* Serialize power state transitions */
	if (FUNC0(tp, TG3_APE_LOCK_GPIO))
		return;

	if (FUNC2(tp, ENABLE_ASF) || FUNC2(tp, ENABLE_APE) || wol_enable)
		msg = TG3_GPIO_MSG_NEED_VAUX;

	msg = FUNC5(tp, msg);

	if (msg & TG3_GPIO_MSG_ALL_DRVR_PRES_MASK)
		goto done;

	if (msg & TG3_GPIO_MSG_ALL_NEED_VAUX_MASK)
		FUNC4(tp);
	else
		FUNC3(tp);

done:
	FUNC1(tp, TG3_APE_LOCK_GPIO);
}