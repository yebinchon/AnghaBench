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
typedef  scalar_t__ u32 ;
struct sharpsl_ftl {unsigned int logmax; unsigned int* log2phy; } ;
struct mtd_info {int erasesize; } ;
typedef  int loff_t ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 unsigned int FUNC0 (scalar_t__,struct mtd_info*) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (scalar_t__,struct mtd_info*) ; 
 int FUNC3 (struct mtd_info*,int,size_t,size_t*,void*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static int FUNC5(struct mtd_info *mtd,
				   loff_t from,
				   size_t len,
				   void *buf,
				   struct sharpsl_ftl *ftl)
{
	unsigned int log_num, final_log_num;
	unsigned int block_num;
	loff_t block_adr;
	loff_t block_ofs;
	size_t retlen;
	int err;

	log_num = FUNC0((u32)from, mtd);
	final_log_num = FUNC0(((u32)from + len - 1), mtd);

	if (len <= 0 || log_num >= ftl->logmax || final_log_num > log_num)
		return -EINVAL;

	block_num = ftl->log2phy[log_num];
	block_adr = (loff_t)block_num * mtd->erasesize;
	block_ofs = FUNC2((u32)from, mtd);

	err = FUNC3(mtd, block_adr + block_ofs, len, &retlen, buf);
	/* Ignore corrected ECC errors */
	if (FUNC1(err))
		err = 0;

	if (!err && retlen != len)
		err = -EIO;

	if (err)
		FUNC4("sharpslpart: error, read failed at %#llx\n",
		       block_adr + block_ofs);

	return err;
}