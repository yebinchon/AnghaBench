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
struct vpdma_dtd {int /*<<< orphan*/ * client_attr1; int /*<<< orphan*/ * client_attr0; int /*<<< orphan*/  start_addr; } ;

/* Variables and functions */
 int DTD_DIR_IN ; 
 int DTD_DIR_OUT ; 
 int /*<<< orphan*/  FUNC0 (struct vpdma_dtd*) ; 
 int FUNC1 (struct vpdma_dtd*) ; 
 int /*<<< orphan*/  FUNC2 (struct vpdma_dtd*) ; 
 int /*<<< orphan*/  FUNC3 (struct vpdma_dtd*) ; 
 int FUNC4 (struct vpdma_dtd*) ; 
 int /*<<< orphan*/  FUNC5 (struct vpdma_dtd*) ; 
 int /*<<< orphan*/  FUNC6 (struct vpdma_dtd*) ; 
 int /*<<< orphan*/  FUNC7 (struct vpdma_dtd*) ; 
 int /*<<< orphan*/  FUNC8 (struct vpdma_dtd*) ; 
 int /*<<< orphan*/  FUNC9 (struct vpdma_dtd*) ; 
 int /*<<< orphan*/  FUNC10 (struct vpdma_dtd*) ; 
 int /*<<< orphan*/  FUNC11 (struct vpdma_dtd*) ; 
 int /*<<< orphan*/  FUNC12 (struct vpdma_dtd*) ; 
 int /*<<< orphan*/  FUNC13 (struct vpdma_dtd*) ; 
 int /*<<< orphan*/  FUNC14 (struct vpdma_dtd*) ; 
 int /*<<< orphan*/  FUNC15 (struct vpdma_dtd*) ; 
 int /*<<< orphan*/  FUNC16 (struct vpdma_dtd*) ; 
 int /*<<< orphan*/  FUNC17 (struct vpdma_dtd*) ; 
 int /*<<< orphan*/  FUNC18 (struct vpdma_dtd*) ; 
 int /*<<< orphan*/  FUNC19 (struct vpdma_dtd*) ; 
 int /*<<< orphan*/  FUNC20 (struct vpdma_dtd*) ; 
 int /*<<< orphan*/  FUNC21 (struct vpdma_dtd*) ; 
 int /*<<< orphan*/  FUNC22 (struct vpdma_dtd*) ; 
 int /*<<< orphan*/  FUNC23 (struct vpdma_dtd*) ; 
 int /*<<< orphan*/  FUNC24 (struct vpdma_dtd*) ; 
 int /*<<< orphan*/  FUNC25 (char*,char*,...) ; 

__attribute__((used)) static void FUNC26(struct vpdma_dtd *dtd)
{
	int dir, chan;

	dir = FUNC4(dtd);
	chan = FUNC1(dtd);

	FUNC25("%s data transfer descriptor for channel %d\n",
		dir == DTD_DIR_OUT ? "outbound" : "inbound", chan);

	FUNC25("word0: data_type = %d, notify = %d, field = %d, 1D = %d, even_ln_skp = %d, odd_ln_skp = %d, line_stride = %d\n",
		FUNC2(dtd), FUNC17(dtd), FUNC7(dtd),
		FUNC0(dtd), FUNC6(dtd),
		FUNC18(dtd), FUNC12(dtd));

	if (dir == DTD_DIR_IN)
		FUNC25("word1: line_length = %d, xfer_height = %d\n",
			FUNC11(dtd), FUNC24(dtd));

	FUNC25("word2: start_addr = %pad\n", &dtd->start_addr);

	FUNC25("word3: pkt_type = %d, mode = %d, dir = %d, chan = %d, pri = %d, next_chan = %d\n",
		 FUNC19(dtd),
		 FUNC15(dtd), dir, chan, FUNC20(dtd),
		 FUNC16(dtd));

	if (dir == DTD_DIR_IN)
		FUNC25("word4: frame_width = %d, frame_height = %d\n",
			FUNC9(dtd), FUNC8(dtd));
	else
		FUNC25("word4: desc_write_addr = 0x%08x, write_desc = %d, drp_data = %d, use_desc_reg = %d\n",
			FUNC3(dtd), FUNC23(dtd),
			FUNC5(dtd), FUNC21(dtd));

	if (dir == DTD_DIR_IN)
		FUNC25("word5: hor_start = %d, ver_start = %d\n",
			FUNC10(dtd), FUNC22(dtd));
	else
		FUNC25("word5: max_width %d, max_height %d\n",
			FUNC14(dtd), FUNC13(dtd));

	FUNC25("word6: client specific attr0 = 0x%08x\n", dtd->client_attr0);
	FUNC25("word7: client specific attr1 = 0x%08x\n", dtd->client_attr1);
}