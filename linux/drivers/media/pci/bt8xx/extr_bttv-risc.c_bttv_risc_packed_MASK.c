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
struct scatterlist {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pci; } ;
struct bttv {scalar_t__ opt_vcr_hack; TYPE_1__ c; } ;
struct btcx_riscmem {int size; int /*<<< orphan*/ * cpu; int /*<<< orphan*/ * jmp; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 unsigned int BT848_FIFO_STATUS_FM1 ; 
 unsigned int BT848_RISC_EOL ; 
 unsigned int BT848_RISC_SKIP ; 
 unsigned int BT848_RISC_SOL ; 
 unsigned int BT848_RISC_SYNC ; 
 unsigned int BT848_RISC_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int PAGE_SIZE ; 
 unsigned int VCR_HACK_LINES ; 
 int FUNC1 (int /*<<< orphan*/ ,struct btcx_riscmem*,int) ; 
 void* FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (struct scatterlist*) ; 
 int FUNC4 (struct scatterlist*) ; 
 struct scatterlist* FUNC5 (struct scatterlist*) ; 

int
FUNC6(struct bttv *btv, struct btcx_riscmem *risc,
		 struct scatterlist *sglist,
		 unsigned int offset, unsigned int bpl,
		 unsigned int padding, unsigned int skip_lines,
		 unsigned int store_lines)
{
	u32 instructions,line,todo;
	struct scatterlist *sg;
	__le32 *rp;
	int rc;

	/* estimate risc mem: worst case is one write per page border +
	   one write per scan line + sync + jump (all 2 dwords).  padding
	   can cause next bpl to start close to a page border.  First DMA
	   region may be smaller than PAGE_SIZE */
	instructions  = skip_lines * 4;
	instructions += (1 + ((bpl + padding) * store_lines)
			 / PAGE_SIZE + store_lines) * 8;
	instructions += 2 * 8;
	if ((rc = FUNC1(btv->c.pci,risc,instructions)) < 0)
		return rc;

	/* sync instruction */
	rp = risc->cpu;
	*(rp++) = FUNC2(BT848_RISC_SYNC|BT848_FIFO_STATUS_FM1);
	*(rp++) = FUNC2(0);

	while (skip_lines-- > 0) {
		*(rp++) = FUNC2(BT848_RISC_SKIP | BT848_RISC_SOL |
				      BT848_RISC_EOL | bpl);
	}

	/* scan lines */
	sg = sglist;
	for (line = 0; line < store_lines; line++) {
		if ((btv->opt_vcr_hack) &&
		    (line >= (store_lines - VCR_HACK_LINES)))
			continue;
		while (offset && offset >= FUNC4(sg)) {
			offset -= FUNC4(sg);
			sg = FUNC5(sg);
		}
		if (bpl <= FUNC4(sg)-offset) {
			/* fits into current chunk */
			*(rp++)=FUNC2(BT848_RISC_WRITE|BT848_RISC_SOL|
					    BT848_RISC_EOL|bpl);
			*(rp++)=FUNC2(FUNC3(sg)+offset);
			offset+=bpl;
		} else {
			/* scanline needs to be split */
			todo = bpl;
			*(rp++)=FUNC2(BT848_RISC_WRITE|BT848_RISC_SOL|
					    (FUNC4(sg)-offset));
			*(rp++)=FUNC2(FUNC3(sg)+offset);
			todo -= (FUNC4(sg)-offset);
			offset = 0;
			sg = FUNC5(sg);
			while (todo > FUNC4(sg)) {
				*(rp++)=FUNC2(BT848_RISC_WRITE|
						    FUNC4(sg));
				*(rp++)=FUNC2(FUNC3(sg));
				todo -= FUNC4(sg);
				sg = FUNC5(sg);
			}
			*(rp++)=FUNC2(BT848_RISC_WRITE|BT848_RISC_EOL|
					    todo);
			*(rp++)=FUNC2(FUNC3(sg));
			offset += todo;
		}
		offset += padding;
	}

	/* save pointer to jmp instruction address */
	risc->jmp = rp;
	FUNC0((risc->jmp - risc->cpu + 2) * sizeof(*risc->cpu) > risc->size);
	return 0;
}