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
typedef  int uint ;
typedef  int /*<<< orphan*/  u8 ;
struct nand_chip {int dummy; } ;
struct mtd_info {int oobsize; int writesize; } ;
struct mpc5121_nfc_prv {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int NFC_SPARE_BUFFERS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int,int) ; 
 struct nand_chip* FUNC4 (struct mtd_info*) ; 
 struct mpc5121_nfc_prv* FUNC5 (struct nand_chip*) ; 

__attribute__((used)) static void FUNC6(struct mtd_info *mtd, uint offset,
						u8 *buffer, uint size, int wr)
{
	struct nand_chip *nand = FUNC4(mtd);
	struct mpc5121_nfc_prv *prv = FUNC5(nand);
	uint o, s, sbsize, blksize;

	/*
	 * NAND spare area is available through NFC spare buffers.
	 * The NFC divides spare area into (page_size / 512) chunks.
	 * Each chunk is placed into separate spare memory area, using
	 * first (spare_size / num_of_chunks) bytes of the buffer.
	 *
	 * For NAND device in which the spare area is not divided fully
	 * by the number of chunks, number of used bytes in each spare
	 * buffer is rounded down to the nearest even number of bytes,
	 * and all remaining bytes are added to the last used spare area.
	 *
	 * For more information read section 26.6.10 of MPC5121e
	 * Microcontroller Reference Manual, Rev. 3.
	 */

	/* Calculate number of valid bytes in each spare buffer */
	sbsize = (mtd->oobsize / (mtd->writesize / 512)) & ~1;

	while (size) {
		/* Calculate spare buffer number */
		s = offset / sbsize;
		if (s > NFC_SPARE_BUFFERS - 1)
			s = NFC_SPARE_BUFFERS - 1;

		/*
		 * Calculate offset to requested data block in selected spare
		 * buffer and its size.
		 */
		o = offset - (s * sbsize);
		blksize = FUNC3(sbsize - o, size);

		if (wr)
			FUNC2(prv->regs + FUNC0(s) + o,
							buffer, blksize);
		else
			FUNC1(buffer,
				prv->regs + FUNC0(s) + o, blksize);

		buffer += blksize;
		offset += blksize;
		size -= blksize;
	};
}