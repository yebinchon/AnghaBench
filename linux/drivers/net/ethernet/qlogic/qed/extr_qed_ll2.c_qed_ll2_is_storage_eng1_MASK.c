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
struct qed_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qed_dev*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (struct qed_dev*) ; 

__attribute__((used)) static bool FUNC4(struct qed_dev *cdev)
{
	return (FUNC1(FUNC3(cdev)) ||
		FUNC2(FUNC3(cdev))) &&
		(FUNC0(cdev) != FUNC3(cdev));
}