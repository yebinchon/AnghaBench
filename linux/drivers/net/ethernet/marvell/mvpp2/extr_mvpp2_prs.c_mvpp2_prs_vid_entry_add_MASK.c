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
typedef  int /*<<< orphan*/  u16 ;
struct mvpp2_prs_entry {int index; } ;
struct mvpp2_port {unsigned int id; struct mvpp2* priv; } ;
struct mvpp2 {int dummy; } ;
typedef  int /*<<< orphan*/  pe ;

/* Variables and functions */
 unsigned int MVPP2_DSA_EXTENDED ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int MVPP2_PE_VID_FILT_RANGE_START ; 
 int /*<<< orphan*/  MVPP2_PRS_LU_L2 ; 
 int /*<<< orphan*/  MVPP2_PRS_LU_VID ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_AI_MASK ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD ; 
 int /*<<< orphan*/  MVPP2_PRS_VID_TCAM_BYTE ; 
 unsigned int MVPP2_PRS_VLAN_FILT_MAX ; 
 scalar_t__ MVPP2_PRS_VLAN_FILT_MAX_ENTRY ; 
 unsigned int MVPP2_VLAN_TAG_EDSA_LEN ; 
 unsigned int MVPP2_VLAN_TAG_LEN ; 
 int /*<<< orphan*/  FUNC1 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mvpp2*,struct mvpp2_prs_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct mvpp2*,struct mvpp2_prs_entry*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mvpp2*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mvpp2_prs_entry*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct mvpp2*,unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct mvpp2_prs_entry*,unsigned int,int) ; 
 int FUNC13 (struct mvpp2_port*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC14 (struct mvpp2*,int /*<<< orphan*/ ) ; 

int FUNC15(struct mvpp2_port *port, u16 vid)
{
	unsigned int vid_start = MVPP2_PE_VID_FILT_RANGE_START +
				 port->id * MVPP2_PRS_VLAN_FILT_MAX;
	unsigned int mask = 0xfff, reg_val, shift;
	struct mvpp2 *priv = port->priv;
	struct mvpp2_prs_entry pe;
	int tid;

	FUNC1(&pe, 0, sizeof(pe));

	/* Scan TCAM and see if entry with this <vid,port> already exist */
	tid = FUNC13(port, vid, mask);

	reg_val = FUNC14(priv, FUNC0(port->id));
	if (reg_val & MVPP2_DSA_EXTENDED)
		shift = MVPP2_VLAN_TAG_EDSA_LEN;
	else
		shift = MVPP2_VLAN_TAG_LEN;

	/* No such entry */
	if (tid < 0) {

		/* Go through all entries from first to last in vlan range */
		tid = FUNC9(priv, vid_start,
						vid_start +
						MVPP2_PRS_VLAN_FILT_MAX_ENTRY);

		/* There isn't room for a new VID filter */
		if (tid < 0)
			return tid;

		FUNC10(&pe, MVPP2_PRS_LU_VID);
		pe.index = tid;

		/* Mask all ports */
		FUNC11(&pe, 0);
	} else {
		FUNC3(priv, &pe, tid);
	}

	/* Enable the current port */
	FUNC12(&pe, port->id, true);

	/* Continue - set next lookup */
	FUNC7(&pe, MVPP2_PRS_LU_L2);

	/* Skip VLAN header - Set offset to 4 or 8 bytes */
	FUNC8(&pe, shift, MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD);

	/* Set match on VID */
	FUNC4(&pe, MVPP2_PRS_VID_TCAM_BYTE, vid);

	/* Clear all ai bits for next iteration */
	FUNC6(&pe, 0, MVPP2_PRS_SRAM_AI_MASK);

	/* Update shadow table */
	FUNC5(priv, pe.index, MVPP2_PRS_LU_VID);
	FUNC2(priv, &pe);

	return 0;
}