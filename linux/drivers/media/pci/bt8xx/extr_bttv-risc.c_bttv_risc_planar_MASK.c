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
typedef  unsigned int u32 ;
struct scatterlist {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pci; } ;
struct bttv {scalar_t__ opt_vcr_hack; TYPE_1__ c; } ;
struct btcx_riscmem {int size; int /*<<< orphan*/ * cpu; int /*<<< orphan*/ * jmp; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 unsigned int BT848_FIFO_STATUS_FM3 ; 
 unsigned int BT848_RISC_EOL ; 
 unsigned int BT848_RISC_SOL ; 
 unsigned int BT848_RISC_SYNC ; 
 unsigned int BT848_RISC_WRITE123 ; 
 unsigned int BT848_RISC_WRITE1S23 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PAGE_SIZE ; 
 unsigned int VCR_HACK_LINES ; 
 int FUNC1 (int /*<<< orphan*/ ,struct btcx_riscmem*,unsigned int) ; 
 void* FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (struct scatterlist*) ; 
 unsigned int FUNC4 (struct scatterlist*) ; 
 struct scatterlist* FUNC5 (struct scatterlist*) ; 

__attribute__((used)) static int
FUNC6(struct bttv *btv, struct btcx_riscmem *risc,
		 struct scatterlist *sglist,
		 unsigned int yoffset,  unsigned int ybpl,
		 unsigned int ypadding, unsigned int ylines,
		 unsigned int uoffset,  unsigned int voffset,
		 unsigned int hshift,   unsigned int vshift,
		 unsigned int cpadding)
{
	unsigned int instructions,line,todo,ylen,chroma;
	__le32 *rp;
	u32 ri;
	struct scatterlist *ysg;
	struct scatterlist *usg;
	struct scatterlist *vsg;
	int topfield = (0 == yoffset);
	int rc;

	/* estimate risc mem: worst case is one write per page border +
	   one write per scan line (5 dwords)
	   plus sync + jump (2 dwords) */
	instructions  = ((3 + (ybpl + ypadding) * ylines * 2)
			 / PAGE_SIZE) + ylines;
	instructions += 2;
	if ((rc = FUNC1(btv->c.pci,risc,instructions*4*5)) < 0)
		return rc;

	/* sync instruction */
	rp = risc->cpu;
	*(rp++) = FUNC2(BT848_RISC_SYNC|BT848_FIFO_STATUS_FM3);
	*(rp++) = FUNC2(0);

	/* scan lines */
	ysg = sglist;
	usg = sglist;
	vsg = sglist;
	for (line = 0; line < ylines; line++) {
		if ((btv->opt_vcr_hack) &&
		    (line >= (ylines - VCR_HACK_LINES)))
			continue;
		switch (vshift) {
		case 0:
			chroma = 1;
			break;
		case 1:
			if (topfield)
				chroma = ((line & 1) == 0);
			else
				chroma = ((line & 1) == 1);
			break;
		case 2:
			if (topfield)
				chroma = ((line & 3) == 0);
			else
				chroma = ((line & 3) == 2);
			break;
		default:
			chroma = 0;
			break;
		}

		for (todo = ybpl; todo > 0; todo -= ylen) {
			/* go to next sg entry if needed */
			while (yoffset && yoffset >= FUNC4(ysg)) {
				yoffset -= FUNC4(ysg);
				ysg = FUNC5(ysg);
			}

			/* calculate max number of bytes we can write */
			ylen = todo;
			if (yoffset + ylen > FUNC4(ysg))
				ylen = FUNC4(ysg) - yoffset;
			if (chroma) {
				while (uoffset && uoffset >= FUNC4(usg)) {
					uoffset -= FUNC4(usg);
					usg = FUNC5(usg);
				}
				while (voffset && voffset >= FUNC4(vsg)) {
					voffset -= FUNC4(vsg);
					vsg = FUNC5(vsg);
				}

				if (uoffset + (ylen>>hshift) > FUNC4(usg))
					ylen = (FUNC4(usg) - uoffset) << hshift;
				if (voffset + (ylen>>hshift) > FUNC4(vsg))
					ylen = (FUNC4(vsg) - voffset) << hshift;
				ri = BT848_RISC_WRITE123;
			} else {
				ri = BT848_RISC_WRITE1S23;
			}
			if (ybpl == todo)
				ri |= BT848_RISC_SOL;
			if (ylen == todo)
				ri |= BT848_RISC_EOL;

			/* write risc instruction */
			*(rp++)=FUNC2(ri | ylen);
			*(rp++)=FUNC2(((ylen >> hshift) << 16) |
					    (ylen >> hshift));
			*(rp++)=FUNC2(FUNC3(ysg)+yoffset);
			yoffset += ylen;
			if (chroma) {
				*(rp++)=FUNC2(FUNC3(usg)+uoffset);
				uoffset += ylen >> hshift;
				*(rp++)=FUNC2(FUNC3(vsg)+voffset);
				voffset += ylen >> hshift;
			}
		}
		yoffset += ypadding;
		if (chroma) {
			uoffset += cpadding;
			voffset += cpadding;
		}
	}

	/* save pointer to jmp instruction address */
	risc->jmp = rp;
	FUNC0((risc->jmp - risc->cpu + 2) * sizeof(*risc->cpu) > risc->size);
	return 0;
}