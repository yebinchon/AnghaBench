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
struct ubi_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct ubi_device const*) ; 
 int /*<<< orphan*/  FUNC2 (struct ubi_device const*,char*,int) ; 
 int FUNC3 (struct ubi_device const*,int) ; 

__attribute__((used)) static int FUNC4(const struct ubi_device *ubi, int pnum)
{
	int err;

	if (!FUNC1(ubi))
		return 0;

	err = FUNC3(ubi, pnum);
	if (!err)
		return err;

	FUNC2(ubi, "self-check failed for PEB %d", pnum);
	FUNC0();
	return err > 0 ? -EINVAL : err;
}