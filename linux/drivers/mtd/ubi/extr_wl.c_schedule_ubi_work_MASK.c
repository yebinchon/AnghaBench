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
struct ubi_work {int dummy; } ;
struct ubi_device {int /*<<< orphan*/  work_sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ubi_device*,struct ubi_work*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ubi_device *ubi, struct ubi_work *wrk)
{
	FUNC1(&ubi->work_sem);
	FUNC0(ubi, wrk);
	FUNC2(&ubi->work_sem);
}