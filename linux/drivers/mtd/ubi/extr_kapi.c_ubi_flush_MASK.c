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
 int ENODEV ; 
 struct ubi_device* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ubi_device*) ; 
 int FUNC2 (struct ubi_device*,int,int) ; 

int FUNC3(int ubi_num, int vol_id, int lnum)
{
	struct ubi_device *ubi;
	int err = 0;

	ubi = FUNC0(ubi_num);
	if (!ubi)
		return -ENODEV;

	err = FUNC2(ubi, vol_id, lnum);
	FUNC1(ubi);
	return err;
}