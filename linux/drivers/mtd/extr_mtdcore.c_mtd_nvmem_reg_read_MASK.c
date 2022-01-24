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

/* Variables and functions */
 int EIO ; 
 int EUCLEAN ; 
 int FUNC0 (struct mtd_info*,unsigned int,size_t,size_t*,void*) ; 

__attribute__((used)) static int FUNC1(void *priv, unsigned int offset,
			      void *val, size_t bytes)
{
	struct mtd_info *mtd = priv;
	size_t retlen;
	int err;

	err = FUNC0(mtd, offset, bytes, &retlen, val);
	if (err && err != -EUCLEAN)
		return err;

	return retlen == bytes ? 0 : -EIO;
}