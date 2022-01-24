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
struct ucb1400 {int /*<<< orphan*/  ucb1400_gpio; int /*<<< orphan*/  ucb1400_ts; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct ucb1400* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ucb1400*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct ucb1400 *ucb = FUNC0(dev);

	FUNC2(ucb->ucb1400_ts);
	FUNC2(ucb->ucb1400_gpio);

	FUNC1(ucb);
	return 0;
}