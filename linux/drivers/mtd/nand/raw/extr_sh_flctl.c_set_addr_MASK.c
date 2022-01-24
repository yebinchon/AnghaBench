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
typedef  int uint32_t ;
struct TYPE_2__ {int options; } ;
struct sh_flctl {scalar_t__ rw_ADRCNT; scalar_t__ page_size; TYPE_1__ chip; } ;
struct mtd_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ ADRCNT2_E ; 
 int /*<<< orphan*/  FUNC0 (struct sh_flctl*) ; 
 int /*<<< orphan*/  FUNC1 (struct sh_flctl*) ; 
 int NAND_BUSWIDTH_16 ; 
 struct sh_flctl* FUNC2 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mtd_info *mtd, int column, int page_addr)
{
	struct sh_flctl *flctl = FUNC2(mtd);
	uint32_t addr = 0;

	if (column == -1) {
		addr = page_addr;	/* ERASE1 */
	} else if (page_addr != -1) {
		/* SEQIN, READ0, etc.. */
		if (flctl->chip.options & NAND_BUSWIDTH_16)
			column >>= 1;
		if (flctl->page_size) {
			addr = column & 0x0FFF;
			addr |= (page_addr & 0xff) << 16;
			addr |= ((page_addr >> 8) & 0xff) << 24;
			/* big than 128MB */
			if (flctl->rw_ADRCNT == ADRCNT2_E) {
				uint32_t 	addr2;
				addr2 = (page_addr >> 16) & 0xff;
				FUNC3(addr2, FUNC1(flctl));
			}
		} else {
			addr = column;
			addr |= (page_addr & 0xff) << 8;
			addr |= ((page_addr >> 8) & 0xff) << 16;
			addr |= ((page_addr >> 16) & 0xff) << 24;
		}
	}
	FUNC3(addr, FUNC0(flctl));
}