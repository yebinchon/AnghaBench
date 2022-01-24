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
struct mtd_info {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct mtd_info*,int /*<<< orphan*/ ,size_t,size_t*,void*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

int FUNC3(struct mtd_info *mtd, loff_t addr, size_t size, void *buf)
{
	size_t read;
	int err;

	err = FUNC1(mtd, addr, size, &read, buf);
	/* Ignore corrected ECC errors */
	if (FUNC0(err))
		err = 0;
	if (!err && read != size)
		err = -EIO;
	if (err)
		FUNC2("error: read failed at %#llx\n", addr);

	return err;
}