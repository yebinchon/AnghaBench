#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_4__ {int /*<<< orphan*/  IO_ADDR_W; } ;
struct TYPE_5__ {TYPE_1__ legacy; } ;
struct omap_nand_info {TYPE_3__* ops; TYPE_2__ nand; } ;
struct mtd_info {int dummy; } ;
struct TYPE_6__ {int (* nand_writebuffer_empty ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct omap_nand_info* FUNC1 (struct mtd_info*) ; 
 int FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct mtd_info *mtd, const u_char * buf, int len)
{
	struct omap_nand_info *info = FUNC1(mtd);
	u16 *p = (u16 *) buf;
	bool status;
	/* FIXME try bursts of writesw() or DMA ... */
	len >>= 1;

	while (len--) {
		FUNC0(*p++, info->nand.legacy.IO_ADDR_W);
		/* wait until buffer is available for write */
		do {
			status = info->ops->nand_writebuffer_empty();
		} while (!status);
	}
}