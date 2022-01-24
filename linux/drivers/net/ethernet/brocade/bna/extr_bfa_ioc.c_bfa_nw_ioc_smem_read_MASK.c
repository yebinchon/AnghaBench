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
typedef  int u32 ;
struct TYPE_2__ {int ioc_init_sem_reg; int host_page_num_fn; int smem_page_start; int /*<<< orphan*/  smem_pg0; } ;
struct bfa_ioc {TYPE_1__ ioc_regs; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static int
FUNC7(struct bfa_ioc *ioc, void *tbuf, u32 soff, u32 sz)
{
	u32 pgnum, loff, r32;
	int i, len;
	u32 *buf = tbuf;

	pgnum = FUNC0(ioc->ioc_regs.smem_pg0, soff);
	loff = FUNC1(soff);

	/*
	 *  Hold semaphore to serialize pll init and fwtrc.
	*/
	if (!FUNC3(ioc->ioc_regs.ioc_init_sem_reg))
		return 1;

	FUNC6(pgnum, ioc->ioc_regs.host_page_num_fn);

	len = sz/sizeof(u32);
	for (i = 0; i < len; i++) {
		r32 = FUNC5(FUNC4(loff + ioc->ioc_regs.smem_page_start));
		buf[i] = FUNC2(r32);
		loff += sizeof(u32);

		/**
		 * handle page offset wrap around
		 */
		loff = FUNC1(loff);
		if (loff == 0) {
			pgnum++;
			FUNC6(pgnum, ioc->ioc_regs.host_page_num_fn);
		}
	}

	FUNC6(FUNC0(ioc->ioc_regs.smem_pg0, 0),
	       ioc->ioc_regs.host_page_num_fn);

	/*
	 * release semaphore
	 */
	FUNC4(ioc->ioc_regs.ioc_init_sem_reg);
	FUNC6(1, ioc->ioc_regs.ioc_init_sem_reg);
	return 0;
}