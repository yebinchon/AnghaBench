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
typedef  int u32 ;
struct solo_dev {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int,int) ; 
 scalar_t__ FUNC4 (struct solo_dev*,int,int*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct solo_dev *solo_dev, int base, int size)
{
	u32 *wr_buf;
	u32 *rd_buf;
	int i;
	int ret = -EIO;
	int order = FUNC2(size);

	wr_buf = (u32 *)FUNC0(GFP_KERNEL, order);
	if (wr_buf == NULL)
		return -1;

	rd_buf = (u32 *)FUNC0(GFP_KERNEL, order);
	if (rd_buf == NULL) {
		FUNC1((unsigned long)wr_buf, order);
		return -1;
	}

	for (i = 0; i < (size >> 3); i++)
		*(wr_buf + i) = (i << 16) | (i + 1);

	for (i = (size >> 3); i < (size >> 2); i++)
		*(wr_buf + i) = ~((i << 16) | (i + 1));

	FUNC3(rd_buf, 0x55, size);

	if (FUNC4(solo_dev, 1, wr_buf, base, size, 0, 0))
		goto test_fail;

	if (FUNC4(solo_dev, 0, rd_buf, base, size, 0, 0))
		goto test_fail;

	for (i = 0; i < (size >> 2); i++) {
		if (*(wr_buf + i) != *(rd_buf + i))
			goto test_fail;
	}

	ret = 0;

test_fail:
	FUNC1((unsigned long)wr_buf, order);
	FUNC1((unsigned long)rd_buf, order);

	return ret;
}