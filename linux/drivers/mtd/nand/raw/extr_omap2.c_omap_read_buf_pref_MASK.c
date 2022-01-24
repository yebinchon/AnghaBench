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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {int /*<<< orphan*/  IO_ADDR_R; } ;
struct TYPE_6__ {int options; TYPE_2__ legacy; } ;
struct TYPE_4__ {int /*<<< orphan*/  gpmc_prefetch_status; } ;
struct omap_nand_info {int /*<<< orphan*/  gpmc_cs; TYPE_3__ nand; TYPE_1__ reg; } ;
struct nand_chip {int dummy; } ;
struct mtd_info {int dummy; } ;

/* Variables and functions */
 int NAND_BUSWIDTH_16 ; 
 int /*<<< orphan*/  PREFETCH_FIFOTHRESHOLD_MAX ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct omap_nand_info* FUNC2 (struct mtd_info*) ; 
 struct mtd_info* FUNC3 (struct nand_chip*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,struct omap_nand_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct omap_nand_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct mtd_info*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mtd_info*,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct nand_chip *chip, u_char *buf, int len)
{
	struct mtd_info *mtd = FUNC3(chip);
	struct omap_nand_info *info = FUNC2(mtd);
	uint32_t r_count = 0;
	int ret = 0;
	u32 *p = (u32 *)buf;

	/* take care of subpage reads */
	if (len % 4) {
		if (info->nand.options & NAND_BUSWIDTH_16)
			FUNC6(mtd, buf, len % 4);
		else
			FUNC7(mtd, buf, len % 4);
		p = (u32 *) (buf + len % 4);
		len -= len % 4;
	}

	/* configure and start prefetch transfer */
	ret = FUNC4(info->gpmc_cs,
			PREFETCH_FIFOTHRESHOLD_MAX, 0x0, len, 0x0, info);
	if (ret) {
		/* PFPW engine is busy, use cpu copy method */
		if (info->nand.options & NAND_BUSWIDTH_16)
			FUNC6(mtd, (u_char *)p, len);
		else
			FUNC7(mtd, (u_char *)p, len);
	} else {
		do {
			r_count = FUNC8(info->reg.gpmc_prefetch_status);
			r_count = FUNC0(r_count);
			r_count = r_count >> 2;
			FUNC1(info->nand.legacy.IO_ADDR_R, p, r_count);
			p += r_count;
			len -= r_count << 2;
		} while (len);
		/* disable and stop the PFPW engine */
		FUNC5(info->gpmc_cs, info);
	}
}