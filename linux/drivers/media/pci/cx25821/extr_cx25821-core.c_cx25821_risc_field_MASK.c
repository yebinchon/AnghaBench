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
typedef  unsigned int u32 ;
struct scatterlist {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 unsigned int NO_SYNC_LINE ; 
 unsigned int RISC_EOL ; 
 unsigned int RISC_JUMP ; 
 unsigned int RISC_RESYNC ; 
 unsigned int RISC_SOL ; 
 unsigned int RISC_WRITE ; 
 void* FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (struct scatterlist*) ; 
 unsigned int FUNC2 (struct scatterlist*) ; 
 struct scatterlist* FUNC3 (struct scatterlist*) ; 

__attribute__((used)) static __le32 *FUNC4(__le32 * rp, struct scatterlist *sglist,
				  unsigned int offset, u32 sync_line,
				  unsigned int bpl, unsigned int padding,
				  unsigned int lines, bool jump)
{
	struct scatterlist *sg;
	unsigned int line, todo;

	if (jump) {
		*(rp++) = FUNC0(RISC_JUMP);
		*(rp++) = FUNC0(0);
		*(rp++) = FUNC0(0); /* bits 63-32 */
	}

	/* sync instruction */
	if (sync_line != NO_SYNC_LINE)
		*(rp++) = FUNC0(RISC_RESYNC | sync_line);

	/* scan lines */
	sg = sglist;
	for (line = 0; line < lines; line++) {
		while (offset && offset >= FUNC2(sg)) {
			offset -= FUNC2(sg);
			sg = FUNC3(sg);
		}
		if (bpl <= FUNC2(sg) - offset) {
			/* fits into current chunk */
			*(rp++) = FUNC0(RISC_WRITE | RISC_SOL | RISC_EOL |
					bpl);
			*(rp++) = FUNC0(FUNC1(sg) + offset);
			*(rp++) = FUNC0(0);	/* bits 63-32 */
			offset += bpl;
		} else {
			/* scanline needs to be split */
			todo = bpl;
			*(rp++) = FUNC0(RISC_WRITE | RISC_SOL |
					(FUNC2(sg) - offset));
			*(rp++) = FUNC0(FUNC1(sg) + offset);
			*(rp++) = FUNC0(0);	/* bits 63-32 */
			todo -= (FUNC2(sg) - offset);
			offset = 0;
			sg = FUNC3(sg);
			while (todo > FUNC2(sg)) {
				*(rp++) = FUNC0(RISC_WRITE |
						FUNC2(sg));
				*(rp++) = FUNC0(FUNC1(sg));
				*(rp++) = FUNC0(0);	/* bits 63-32 */
				todo -= FUNC2(sg);
				sg = FUNC3(sg);
			}
			*(rp++) = FUNC0(RISC_WRITE | RISC_EOL | todo);
			*(rp++) = FUNC0(FUNC1(sg));
			*(rp++) = FUNC0(0);	/* bits 63-32 */
			offset += todo;
		}

		offset += padding;
	}

	return rp;
}