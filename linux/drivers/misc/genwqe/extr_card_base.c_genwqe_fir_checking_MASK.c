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
typedef  int u64 ;
typedef  int u32 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct genwqe_dev {struct pci_dev* pci_dev; } ;

/* Variables and functions */
 int GENWQE_MAX_UNITS ; 
 int GFIR_ERR_TRIGGER ; 
 int IO_ILLEGAL_VALUE ; 
 int IO_SLC_CFGREG_GFIR ; 
 int FUNC0 (struct genwqe_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct genwqe_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,...) ; 

__attribute__((used)) static u64 FUNC4(struct genwqe_dev *cd)
{
	int j, iterations = 0;
	u64 mask, fir, fec, uid, gfir, gfir_masked, sfir, sfec;
	u32 fir_addr, fir_clr_addr, fec_addr, sfir_addr, sfec_addr;
	struct pci_dev *pci_dev = cd->pci_dev;

 healthMonitor:
	iterations++;
	if (iterations > 16) {
		FUNC3(&pci_dev->dev, "* exit looping after %d times\n",
			iterations);
		goto fatal_error;
	}

	gfir = FUNC0(cd, IO_SLC_CFGREG_GFIR);
	if (gfir != 0x0)
		FUNC3(&pci_dev->dev, "* 0x%08x 0x%016llx\n",
				    IO_SLC_CFGREG_GFIR, gfir);
	if (gfir == IO_ILLEGAL_VALUE)
		goto fatal_error;

	/*
	 * Avoid printing when to GFIR bit is on prevents contignous
	 * printout e.g. for the following bug:
	 *   FIR set without a 2ndary FIR/FIR cannot be cleared
	 * Comment out the following if to get the prints:
	 */
	if (gfir == 0)
		return 0;

	gfir_masked = gfir & GFIR_ERR_TRIGGER;  /* fatal errors */

	for (uid = 0; uid < GENWQE_MAX_UNITS; uid++) { /* 0..2 in zEDC */

		/* read the primary FIR (pfir) */
		fir_addr = (uid << 24) + 0x08;
		fir = FUNC0(cd, fir_addr);
		if (fir == 0x0)
			continue;  /* no error in this unit */

		FUNC3(&pci_dev->dev, "* 0x%08x 0x%016llx\n", fir_addr, fir);
		if (fir == IO_ILLEGAL_VALUE)
			goto fatal_error;

		/* read primary FEC */
		fec_addr = (uid << 24) + 0x18;
		fec = FUNC0(cd, fec_addr);

		FUNC3(&pci_dev->dev, "* 0x%08x 0x%016llx\n", fec_addr, fec);
		if (fec == IO_ILLEGAL_VALUE)
			goto fatal_error;

		for (j = 0, mask = 1ULL; j < 64; j++, mask <<= 1) {

			/* secondary fir empty, skip it */
			if ((fir & mask) == 0x0)
				continue;

			sfir_addr = (uid << 24) + 0x100 + 0x08 * j;
			sfir = FUNC0(cd, sfir_addr);

			if (sfir == IO_ILLEGAL_VALUE)
				goto fatal_error;
			FUNC3(&pci_dev->dev,
				"* 0x%08x 0x%016llx\n", sfir_addr, sfir);

			sfec_addr = (uid << 24) + 0x300 + 0x08 * j;
			sfec = FUNC0(cd, sfec_addr);

			if (sfec == IO_ILLEGAL_VALUE)
				goto fatal_error;
			FUNC3(&pci_dev->dev,
				"* 0x%08x 0x%016llx\n", sfec_addr, sfec);

			gfir = FUNC0(cd, IO_SLC_CFGREG_GFIR);
			if (gfir == IO_ILLEGAL_VALUE)
				goto fatal_error;

			/* gfir turned on during routine! get out and
			   start over. */
			if ((gfir_masked == 0x0) &&
			    (gfir & GFIR_ERR_TRIGGER)) {
				goto healthMonitor;
			}

			/* do not clear if we entered with a fatal gfir */
			if (gfir_masked == 0x0) {

				/* NEW clear by mask the logged bits */
				sfir_addr = (uid << 24) + 0x100 + 0x08 * j;
				FUNC1(cd, sfir_addr, sfir);

				FUNC2(&pci_dev->dev,
					"[HM] Clearing  2ndary FIR 0x%08x with 0x%016llx\n",
					sfir_addr, sfir);

				/*
				 * note, these cannot be error-Firs
				 * since gfir_masked is 0 after sfir
				 * was read. Also, it is safe to do
				 * this write if sfir=0. Still need to
				 * clear the primary. This just means
				 * there is no secondary FIR.
				 */

				/* clear by mask the logged bit. */
				fir_clr_addr = (uid << 24) + 0x10;
				FUNC1(cd, fir_clr_addr, mask);

				FUNC2(&pci_dev->dev,
					"[HM] Clearing primary FIR 0x%08x with 0x%016llx\n",
					fir_clr_addr, mask);
			}
		}
	}
	gfir = FUNC0(cd, IO_SLC_CFGREG_GFIR);
	if (gfir == IO_ILLEGAL_VALUE)
		goto fatal_error;

	if ((gfir_masked == 0x0) && (gfir & GFIR_ERR_TRIGGER)) {
		/*
		 * Check once more that it didn't go on after all the
		 * FIRS were cleared.
		 */
		FUNC2(&pci_dev->dev, "ACK! Another FIR! Recursing %d!\n",
			iterations);
		goto healthMonitor;
	}
	return gfir_masked;

 fatal_error:
	return IO_ILLEGAL_VALUE;
}