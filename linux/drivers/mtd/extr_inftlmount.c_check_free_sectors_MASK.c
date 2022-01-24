#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct mtd_info {int oobsize; } ;
struct TYPE_2__ {struct mtd_info* mtd; } ;
struct INFTLrecord {TYPE_1__ mbd; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SECTORSIZE ; 
 scalar_t__ FUNC0 (struct mtd_info*,unsigned int,int,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC4 (struct mtd_info*,unsigned int,int,size_t*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct INFTLrecord *inftl, unsigned int address,
	int len, int check_oob)
{
	struct mtd_info *mtd = inftl->mbd.mtd;
	size_t retlen;
	int i, ret;
	u8 *buf;

	buf = FUNC2(SECTORSIZE + mtd->oobsize, GFP_KERNEL);
	if (!buf)
		return -1;

	ret = -1;
	for (i = 0; i < len; i += SECTORSIZE) {
		if (FUNC4(mtd, address, SECTORSIZE, &retlen, buf))
			goto out;
		if (FUNC3(buf, 0xff, SECTORSIZE) != 0)
			goto out;

		if (check_oob) {
			if(FUNC0(mtd, address, mtd->oobsize,
					  &retlen, &buf[SECTORSIZE]) < 0)
				goto out;
			if (FUNC3(buf + SECTORSIZE, 0xff, mtd->oobsize) != 0)
				goto out;
		}
		address += SECTORSIZE;
	}

	ret = 0;

out:
	FUNC1(buf);
	return ret;
}