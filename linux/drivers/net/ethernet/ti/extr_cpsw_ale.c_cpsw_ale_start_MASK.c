#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ expires; } ;
struct cpsw_ale {TYPE_1__ timer; scalar_t__ ageout; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALE_CLEAR ; 
 int /*<<< orphan*/  ALE_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpsw_ale*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  cpsw_ale_timer ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct cpsw_ale *ale)
{
	FUNC1(ale, 0, ALE_ENABLE, 1);
	FUNC1(ale, 0, ALE_CLEAR, 1);

	FUNC2(&ale->timer, cpsw_ale_timer, 0);
	if (ale->ageout) {
		ale->timer.expires = jiffies + ale->ageout;
		FUNC0(&ale->timer);
	}
}