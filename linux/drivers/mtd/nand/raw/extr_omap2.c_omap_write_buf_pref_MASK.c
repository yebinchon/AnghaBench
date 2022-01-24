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
typedef  void* u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_6__ {int /*<<< orphan*/  gpmc_prefetch_status; } ;
struct TYPE_4__ {int /*<<< orphan*/  IO_ADDR_W; } ;
struct TYPE_5__ {int options; TYPE_1__ legacy; } ;
struct omap_nand_info {int /*<<< orphan*/  gpmc_cs; TYPE_3__ reg; TYPE_2__ nand; } ;
struct nand_chip {int dummy; } ;
struct mtd_info {int dummy; } ;

/* Variables and functions */
 int NAND_BUSWIDTH_16 ; 
 int /*<<< orphan*/  OMAP_NAND_TIMEOUT_MS ; 
 int /*<<< orphan*/  PREFETCH_FIFOTHRESHOLD_MAX ; 
 void* FUNC0 (void*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long loops_per_jiffy ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 struct omap_nand_info* FUNC5 (struct mtd_info*) ; 
 struct mtd_info* FUNC6 (struct nand_chip*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,struct omap_nand_info*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct omap_nand_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct mtd_info*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct mtd_info*,int /*<<< orphan*/ *,int) ; 
 void* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct nand_chip *chip, const u_char *buf,
				int len)
{
	struct mtd_info *mtd = FUNC6(chip);
	struct omap_nand_info *info = FUNC5(mtd);
	uint32_t w_count = 0;
	int i = 0, ret = 0;
	u16 *p = (u16 *)buf;
	unsigned long tim, limit;
	u32 val;

	/* take care of subpage writes */
	if (len % 2 != 0) {
		FUNC12(*buf, info->nand.legacy.IO_ADDR_W);
		p = (u16 *)(buf + 1);
		len--;
	}

	/*  configure and start prefetch transfer */
	ret = FUNC7(info->gpmc_cs,
			PREFETCH_FIFOTHRESHOLD_MAX, 0x0, len, 0x1, info);
	if (ret) {
		/* PFPW engine is busy, use cpu copy method */
		if (info->nand.options & NAND_BUSWIDTH_16)
			FUNC9(mtd, (u_char *)p, len);
		else
			FUNC10(mtd, (u_char *)p, len);
	} else {
		while (len) {
			w_count = FUNC11(info->reg.gpmc_prefetch_status);
			w_count = FUNC1(w_count);
			w_count = w_count >> 1;
			for (i = 0; (i < w_count) && len; i++, len -= 2)
				FUNC3(*p++, info->nand.legacy.IO_ADDR_W);
		}
		/* wait for data to flushed-out before reset the prefetch */
		tim = 0;
		limit = (loops_per_jiffy *
					FUNC4(OMAP_NAND_TIMEOUT_MS));
		do {
			FUNC2();
			val = FUNC11(info->reg.gpmc_prefetch_status);
			val = FUNC0(val);
		} while (val && (tim++ < limit));

		/* disable and stop the PFPW engine */
		FUNC8(info->gpmc_cs, info);
	}
}