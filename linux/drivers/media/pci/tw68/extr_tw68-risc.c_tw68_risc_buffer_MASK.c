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
struct tw68_buf {int size; int /*<<< orphan*/ * cpu; int /*<<< orphan*/ * jmp; scalar_t__ dma; } ;
struct scatterlist {int dummy; } ;
struct pci_dev {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 unsigned int PAGE_SIZE ; 
 unsigned int UNSET ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (struct pci_dev*,int,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,struct scatterlist*,unsigned int,int,unsigned int,unsigned int,unsigned int,int) ; 

int FUNC4(struct pci_dev *pci,
			struct tw68_buf *buf,
			struct scatterlist *sglist,
			unsigned int top_offset,
			unsigned int bottom_offset,
			unsigned int bpl,
			unsigned int padding,
			unsigned int lines)
{
	u32 instructions, fields;
	__le32 *rp;

	fields = 0;
	if (UNSET != top_offset)
		fields++;
	if (UNSET != bottom_offset)
		fields++;
	/*
	 * estimate risc mem: worst case is one write per page border +
	 * one write per scan line + syncs + 2 jumps (all 2 dwords).
	 * Padding can cause next bpl to start close to a page border.
	 * First DMA region may be smaller than PAGE_SIZE
	 */
	instructions  = fields * (1 + (((bpl + padding) * lines) /
			 PAGE_SIZE) + lines) + 4;
	buf->size = instructions * 8;
	buf->cpu = FUNC2(pci, buf->size, &buf->dma);
	if (buf->cpu == NULL)
		return -ENOMEM;

	/* write risc instructions */
	rp = buf->cpu;
	if (UNSET != top_offset)	/* generates SYNCO */
		rp = FUNC3(rp, sglist, top_offset, 1,
				     bpl, padding, lines, true);
	if (UNSET != bottom_offset)	/* generates SYNCE */
		rp = FUNC3(rp, sglist, bottom_offset, 2,
				     bpl, padding, lines, top_offset == UNSET);

	/* save pointer to jmp instruction address */
	buf->jmp = rp;
	buf->cpu[1] = FUNC1(buf->dma + 8);
	/* assure risc buffer hasn't overflowed */
	FUNC0((buf->jmp - buf->cpu + 2) * sizeof(buf->cpu[0]) > buf->size);
	return 0;
}