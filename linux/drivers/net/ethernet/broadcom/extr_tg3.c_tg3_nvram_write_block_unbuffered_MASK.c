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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct tg3 {int nvram_pagesize; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NVRAM_ADDR ; 
 int NVRAM_CMD_DONE ; 
 int NVRAM_CMD_ERASE ; 
 int NVRAM_CMD_FIRST ; 
 int NVRAM_CMD_GO ; 
 int NVRAM_CMD_LAST ; 
 int NVRAM_CMD_WR ; 
 int NVRAM_CMD_WRDI ; 
 int NVRAM_CMD_WREN ; 
 int /*<<< orphan*/  NVRAM_WRDATA ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tg3*) ; 
 int FUNC5 (struct tg3*,int) ; 
 int FUNC6 (struct tg3*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct tg3 *tp, u32 offset, u32 len,
		u8 *buf)
{
	int ret = 0;
	u32 pagesize = tp->nvram_pagesize;
	u32 pagemask = pagesize - 1;
	u32 nvram_cmd;
	u8 *tmp;

	tmp = FUNC2(pagesize, GFP_KERNEL);
	if (tmp == NULL)
		return -ENOMEM;

	while (len) {
		int j;
		u32 phy_addr, page_off, size;

		phy_addr = offset & ~pagemask;

		for (j = 0; j < pagesize; j += 4) {
			ret = FUNC6(tp, phy_addr + j,
						  (__be32 *) (tmp + j));
			if (ret)
				break;
		}
		if (ret)
			break;

		page_off = offset & pagemask;
		size = pagesize;
		if (len < size)
			size = len;

		len -= size;

		FUNC3(tmp + page_off, buf, size);

		offset = offset + (pagesize - page_off);

		FUNC4(tp);

		/*
		 * Before we can erase the flash page, we need
		 * to issue a special "write enable" command.
		 */
		nvram_cmd = NVRAM_CMD_WREN | NVRAM_CMD_GO | NVRAM_CMD_DONE;

		if (FUNC5(tp, nvram_cmd))
			break;

		/* Erase the target page */
		FUNC7(NVRAM_ADDR, phy_addr);

		nvram_cmd = NVRAM_CMD_GO | NVRAM_CMD_DONE | NVRAM_CMD_WR |
			NVRAM_CMD_FIRST | NVRAM_CMD_LAST | NVRAM_CMD_ERASE;

		if (FUNC5(tp, nvram_cmd))
			break;

		/* Issue another write enable to start the write. */
		nvram_cmd = NVRAM_CMD_WREN | NVRAM_CMD_GO | NVRAM_CMD_DONE;

		if (FUNC5(tp, nvram_cmd))
			break;

		for (j = 0; j < pagesize; j += 4) {
			__be32 data;

			data = *((__be32 *) (tmp + j));

			FUNC7(NVRAM_WRDATA, FUNC0(data));

			FUNC7(NVRAM_ADDR, phy_addr + j);

			nvram_cmd = NVRAM_CMD_GO | NVRAM_CMD_DONE |
				NVRAM_CMD_WR;

			if (j == 0)
				nvram_cmd |= NVRAM_CMD_FIRST;
			else if (j == (pagesize - 4))
				nvram_cmd |= NVRAM_CMD_LAST;

			ret = FUNC5(tp, nvram_cmd);
			if (ret)
				break;
		}
		if (ret)
			break;
	}

	nvram_cmd = NVRAM_CMD_WRDI | NVRAM_CMD_GO | NVRAM_CMD_DONE;
	FUNC5(tp, nvram_cmd);

	FUNC1(tmp);

	return ret;
}