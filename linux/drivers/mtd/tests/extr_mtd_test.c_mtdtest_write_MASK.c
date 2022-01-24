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
 int FUNC0 (struct mtd_info*,int /*<<< orphan*/ ,size_t,size_t*,void const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

int FUNC2(struct mtd_info *mtd, loff_t addr, size_t size,
		const void *buf)
{
	size_t written;
	int err;

	err = FUNC0(mtd, addr, size, &written, buf);
	if (!err && written != size)
		err = -EIO;
	if (err)
		FUNC1("error: write failed at %#llx\n", addr);

	return err;
}