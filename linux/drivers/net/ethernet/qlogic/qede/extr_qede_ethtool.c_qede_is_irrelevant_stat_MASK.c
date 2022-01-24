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
struct qede_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qede_dev*) ; 
 scalar_t__ FUNC1 (struct qede_dev*) ; 
 scalar_t__ FUNC2 (struct qede_dev*) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static bool FUNC6(struct qede_dev *edev, int stat_index)
{
	return (FUNC0(edev) && FUNC5(stat_index)) ||
	       (FUNC2(edev) && FUNC3(stat_index)) ||
	       (FUNC1(edev) && FUNC4(stat_index));
}