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
struct tg3 {int /*<<< orphan*/  mi_mode; } ;

/* Variables and functions */
 scalar_t__ ASIC_REV_5785 ; 
 int /*<<< orphan*/  MAC_MI_MODE ; 
 int /*<<< orphan*/  MAC_MI_MODE_AUTO_POLL ; 
 int /*<<< orphan*/  MDIOBUS_INITED ; 
 scalar_t__ FUNC0 (struct tg3*) ; 
 scalar_t__ FUNC1 (struct tg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct tg3 *tp)
{
	tp->mi_mode &= ~MAC_MI_MODE_AUTO_POLL;
	FUNC3(MAC_MI_MODE, tp->mi_mode);
	FUNC4(80);

	if (FUNC1(tp, MDIOBUS_INITED) &&
	    FUNC0(tp) == ASIC_REV_5785)
		FUNC2(tp);
}