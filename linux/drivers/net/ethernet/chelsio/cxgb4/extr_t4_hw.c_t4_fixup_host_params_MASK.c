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
typedef  int u16 ;
struct TYPE_2__ {int /*<<< orphan*/  chip; } ;
struct adapter {TYPE_1__ params; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int EGRSTATUSPAGESIZE_F ; 
 int FUNC0 (int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (unsigned int) ; 
 unsigned int FUNC4 (unsigned int) ; 
 unsigned int FUNC5 (unsigned int) ; 
 unsigned int FUNC6 (unsigned int) ; 
 unsigned int FUNC7 (unsigned int) ; 
 unsigned int FUNC8 (unsigned int) ; 
 unsigned int FUNC9 (unsigned int) ; 
 unsigned int INGPACKBOUNDARY_16B_X ; 
 unsigned int INGPACKBOUNDARY_64B_X ; 
 unsigned int INGPACKBOUNDARY_M ; 
 unsigned int INGPACKBOUNDARY_SHIFT_X ; 
 int FUNC10 (unsigned int) ; 
 unsigned int INGPADBOUNDARY_32B_X ; 
 unsigned int INGPADBOUNDARY_M ; 
 unsigned int INGPADBOUNDARY_SHIFT_X ; 
 int FUNC11 (unsigned int) ; 
 int /*<<< orphan*/  PCI_EXP_DEVCTL ; 
 int PCI_EXP_DEVCTL_PAYLOAD ; 
 int /*<<< orphan*/  SGE_CONTROL2_A ; 
 int /*<<< orphan*/  SGE_CONTROL_A ; 
 int /*<<< orphan*/  SGE_FL_BUFFER_SIZE0_A ; 
 int /*<<< orphan*/  SGE_FL_BUFFER_SIZE2_A ; 
 int /*<<< orphan*/  SGE_FL_BUFFER_SIZE3_A ; 
 int /*<<< orphan*/  SGE_HOST_PAGE_SIZE_A ; 
 unsigned int T6_INGPADBOUNDARY_8B_X ; 
 int /*<<< orphan*/  ULP_RX_TDDP_PSZ_A ; 
 int FUNC12 (unsigned int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 unsigned int FUNC17 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct adapter*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC19 (struct adapter*,int /*<<< orphan*/ ,unsigned int) ; 

int FUNC20(struct adapter *adap, unsigned int page_size,
			 unsigned int cache_line_size)
{
	unsigned int page_shift = FUNC12(page_size) - 1;
	unsigned int sge_hps = page_shift - 10;
	unsigned int stat_len = cache_line_size > 64 ? 128 : 64;
	unsigned int fl_align = cache_line_size < 32 ? 32 : cache_line_size;
	unsigned int fl_align_log = FUNC12(fl_align) - 1;

	FUNC19(adap, SGE_HOST_PAGE_SIZE_A,
		     FUNC1(sge_hps) |
		     FUNC2(sge_hps) |
		     FUNC3(sge_hps) |
		     FUNC4(sge_hps) |
		     FUNC5(sge_hps) |
		     FUNC6(sge_hps) |
		     FUNC7(sge_hps) |
		     FUNC8(sge_hps));

	if (FUNC13(adap->params.chip)) {
		FUNC18(adap, SGE_CONTROL_A,
				 FUNC11(INGPADBOUNDARY_M) |
				 EGRSTATUSPAGESIZE_F,
				 FUNC11(fl_align_log -
						  INGPADBOUNDARY_SHIFT_X) |
				 FUNC0(stat_len != 64));
	} else {
		unsigned int pack_align;
		unsigned int ingpad, ingpack;

		/* T5 introduced the separation of the Free List Padding and
		 * Packing Boundaries.  Thus, we can select a smaller Padding
		 * Boundary to avoid uselessly chewing up PCIe Link and Memory
		 * Bandwidth, and use a Packing Boundary which is large enough
		 * to avoid false sharing between CPUs, etc.
		 *
		 * For the PCI Link, the smaller the Padding Boundary the
		 * better.  For the Memory Controller, a smaller Padding
		 * Boundary is better until we cross under the Memory Line
		 * Size (the minimum unit of transfer to/from Memory).  If we
		 * have a Padding Boundary which is smaller than the Memory
		 * Line Size, that'll involve a Read-Modify-Write cycle on the
		 * Memory Controller which is never good.
		 */

		/* We want the Packing Boundary to be based on the Cache Line
		 * Size in order to help avoid False Sharing performance
		 * issues between CPUs, etc.  We also want the Packing
		 * Boundary to incorporate the PCI-E Maximum Payload Size.  We
		 * get best performance when the Packing Boundary is a
		 * multiple of the Maximum Payload Size.
		 */
		pack_align = fl_align;
		if (FUNC15(adap->pdev)) {
			unsigned int mps, mps_log;
			u16 devctl;

			/* The PCIe Device Control Maximum Payload Size field
			 * [bits 7:5] encodes sizes as powers of 2 starting at
			 * 128 bytes.
			 */
			FUNC16(adap->pdev, PCI_EXP_DEVCTL,
						  &devctl);
			mps_log = ((devctl & PCI_EXP_DEVCTL_PAYLOAD) >> 5) + 7;
			mps = 1 << mps_log;
			if (mps > pack_align)
				pack_align = mps;
		}

		/* N.B. T5/T6 have a crazy special interpretation of the "0"
		 * value for the Packing Boundary.  This corresponds to 16
		 * bytes instead of the expected 32 bytes.  So if we want 32
		 * bytes, the best we can really do is 64 bytes ...
		 */
		if (pack_align <= 16) {
			ingpack = INGPACKBOUNDARY_16B_X;
			fl_align = 16;
		} else if (pack_align == 32) {
			ingpack = INGPACKBOUNDARY_64B_X;
			fl_align = 64;
		} else {
			unsigned int pack_align_log = FUNC12(pack_align) - 1;

			ingpack = pack_align_log - INGPACKBOUNDARY_SHIFT_X;
			fl_align = pack_align;
		}

		/* Use the smallest Ingress Padding which isn't smaller than
		 * the Memory Controller Read/Write Size.  We'll take that as
		 * being 8 bytes since we don't know of any system with a
		 * wider Memory Controller Bus Width.
		 */
		if (FUNC14(adap->params.chip))
			ingpad = INGPADBOUNDARY_32B_X;
		else
			ingpad = T6_INGPADBOUNDARY_8B_X;

		FUNC18(adap, SGE_CONTROL_A,
				 FUNC11(INGPADBOUNDARY_M) |
				 EGRSTATUSPAGESIZE_F,
				 FUNC11(ingpad) |
				 FUNC0(stat_len != 64));
		FUNC18(adap, SGE_CONTROL2_A,
				 FUNC10(INGPACKBOUNDARY_M),
				 FUNC10(ingpack));
	}
	/*
	 * Adjust various SGE Free List Host Buffer Sizes.
	 *
	 * This is something of a crock since we're using fixed indices into
	 * the array which are also known by the sge.c code and the T4
	 * Firmware Configuration File.  We need to come up with a much better
	 * approach to managing this array.  For now, the first four entries
	 * are:
	 *
	 *   0: Host Page Size
	 *   1: 64KB
	 *   2: Buffer size corresponding to 1500 byte MTU (unpacked mode)
	 *   3: Buffer size corresponding to 9000 byte MTU (unpacked mode)
	 *
	 * For the single-MTU buffers in unpacked mode we need to include
	 * space for the SGE Control Packet Shift, 14 byte Ethernet header,
	 * possible 4 byte VLAN tag, all rounded up to the next Ingress Packet
	 * Padding boundary.  All of these are accommodated in the Factory
	 * Default Firmware Configuration File but we need to adjust it for
	 * this host's cache line size.
	 */
	FUNC19(adap, SGE_FL_BUFFER_SIZE0_A, page_size);
	FUNC19(adap, SGE_FL_BUFFER_SIZE2_A,
		     (FUNC17(adap, SGE_FL_BUFFER_SIZE2_A) + fl_align-1)
		     & ~(fl_align-1));
	FUNC19(adap, SGE_FL_BUFFER_SIZE3_A,
		     (FUNC17(adap, SGE_FL_BUFFER_SIZE3_A) + fl_align-1)
		     & ~(fl_align-1));

	FUNC19(adap, ULP_RX_TDDP_PSZ_A, FUNC9(page_shift - 12));

	return 0;
}