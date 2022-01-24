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
struct scatterlist {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 unsigned int RISC_INLINE ; 
 unsigned int RISC_JUMP ; 
 unsigned int RISC_LINESTART ; 
 unsigned int RISC_SYNCE ; 
 unsigned int RISC_SYNCO ; 
 void* FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (struct scatterlist*) ; 
 unsigned int FUNC2 (struct scatterlist*) ; 
 struct scatterlist* FUNC3 (struct scatterlist*) ; 

__attribute__((used)) static __le32 *FUNC4(__le32 *rp, struct scatterlist *sglist,
			    unsigned int offset, u32 sync_line,
			    unsigned int bpl, unsigned int padding,
			    unsigned int lines, bool jump)
{
	struct scatterlist *sg;
	unsigned int line, todo, done;

	if (jump) {
		*(rp++) = FUNC0(RISC_JUMP);
		*(rp++) = 0;
	}

	/* sync instruction */
	if (sync_line == 1)
		*(rp++) = FUNC0(RISC_SYNCO);
	else
		*(rp++) = FUNC0(RISC_SYNCE);
	*(rp++) = 0;

	/* scan lines */
	sg = sglist;
	for (line = 0; line < lines; line++) {
		/* calculate next starting position */
		while (offset && offset >= FUNC2(sg)) {
			offset -= FUNC2(sg);
			sg = FUNC3(sg);
		}
		if (bpl <= FUNC2(sg) - offset) {
			/* fits into current chunk */
			*(rp++) = FUNC0(RISC_LINESTART |
					      /* (offset<<12) |*/  bpl);
			*(rp++) = FUNC0(FUNC1(sg) + offset);
			offset += bpl;
		} else {
			/*
			 * scanline needs to be split.  Put the start in
			 * whatever memory remains using RISC_LINESTART,
			 * then the remainder into following addresses
			 * given by the scatter-gather list.
			 */
			todo = bpl;	/* one full line to be done */
			/* first fragment */
			done = (FUNC2(sg) - offset);
			*(rp++) = FUNC0(RISC_LINESTART |
						(7 << 24) |
						done);
			*(rp++) = FUNC0(FUNC1(sg) + offset);
			todo -= done;
			sg = FUNC3(sg);
			/* succeeding fragments have no offset */
			while (todo > FUNC2(sg)) {
				*(rp++) = FUNC0(RISC_INLINE |
						(done << 12) |
						FUNC2(sg));
				*(rp++) = FUNC0(FUNC1(sg));
				todo -= FUNC2(sg);
				sg = FUNC3(sg);
				done += FUNC2(sg);
			}
			if (todo) {
				/* final chunk - offset 0, count 'todo' */
				*(rp++) = FUNC0(RISC_INLINE |
							(done << 12) |
							todo);
				*(rp++) = FUNC0(FUNC1(sg));
			}
			offset = todo;
		}
		offset += padding;
	}

	return rp;
}