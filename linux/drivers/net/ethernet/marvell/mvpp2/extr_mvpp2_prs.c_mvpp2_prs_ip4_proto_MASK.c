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
struct mvpp2_prs_entry {int index; int* sram; } ;
struct mvpp2 {int dummy; } ;
struct iphdr {int dummy; } ;
typedef  int /*<<< orphan*/  pe ;

/* Variables and functions */
 int EINVAL ; 
 unsigned short IPPROTO_IGMP ; 
 unsigned short IPPROTO_TCP ; 
 unsigned short IPPROTO_UDP ; 
 int /*<<< orphan*/  MVPP2_PE_FIRST_FREE_TID ; 
 int /*<<< orphan*/  MVPP2_PE_LAST_FREE_TID ; 
 int /*<<< orphan*/  MVPP2_PRS_IPV4_DIP_AI_BIT ; 
 int /*<<< orphan*/  MVPP2_PRS_LU_IP4 ; 
 int /*<<< orphan*/  MVPP2_PRS_PORT_MASK ; 
 unsigned int MVPP2_PRS_RI_IP_FRAG_MASK ; 
 unsigned int MVPP2_PRS_RI_IP_FRAG_TRUE ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_OP_SEL_UDF_ADD ; 
 size_t MVPP2_PRS_SRAM_RI_CTRL_WORD ; 
 size_t MVPP2_PRS_SRAM_RI_WORD ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_UDF_TYPE_L4 ; 
 int MVPP2_PRS_TCAM_PROTO_MASK ; 
 int MVPP2_PRS_TCAM_PROTO_MASK_L ; 
 int /*<<< orphan*/  FUNC0 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mvpp2*,struct mvpp2_prs_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct mvpp2*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mvpp2_prs_entry*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct mvpp2_prs_entry*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mvpp2_prs_entry*,int,int,int) ; 
 int FUNC10 (struct mvpp2*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct mvpp2 *priv, unsigned short proto,
			       unsigned int ri, unsigned int ri_mask)
{
	struct mvpp2_prs_entry pe;
	int tid;

	if ((proto != IPPROTO_TCP) && (proto != IPPROTO_UDP) &&
	    (proto != IPPROTO_IGMP))
		return -EINVAL;

	/* Not fragmented packet */
	tid = FUNC10(priv, MVPP2_PE_FIRST_FREE_TID,
					MVPP2_PE_LAST_FREE_TID);
	if (tid < 0)
		return tid;

	FUNC0(&pe, 0, sizeof(pe));
	FUNC11(&pe, MVPP2_PRS_LU_IP4);
	pe.index = tid;

	/* Set next lu to IPv4 */
	FUNC4(&pe, MVPP2_PRS_LU_IP4);
	FUNC7(&pe, 12, MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD);
	/* Set L4 offset */
	FUNC5(&pe, MVPP2_PRS_SRAM_UDF_TYPE_L4,
				  sizeof(struct iphdr) - 4,
				  MVPP2_PRS_SRAM_OP_SEL_UDF_ADD);
	FUNC3(&pe, MVPP2_PRS_IPV4_DIP_AI_BIT,
				 MVPP2_PRS_IPV4_DIP_AI_BIT);
	FUNC6(&pe, ri, ri_mask | MVPP2_PRS_RI_IP_FRAG_MASK);

	FUNC9(&pe, 2, 0x00,
				     MVPP2_PRS_TCAM_PROTO_MASK_L);
	FUNC9(&pe, 3, 0x00,
				     MVPP2_PRS_TCAM_PROTO_MASK);

	FUNC9(&pe, 5, proto, MVPP2_PRS_TCAM_PROTO_MASK);
	FUNC8(&pe, 0, MVPP2_PRS_IPV4_DIP_AI_BIT);
	/* Unmask all ports */
	FUNC12(&pe, MVPP2_PRS_PORT_MASK);

	/* Update shadow table and hw entry */
	FUNC2(priv, pe.index, MVPP2_PRS_LU_IP4);
	FUNC1(priv, &pe);

	/* Fragmented packet */
	tid = FUNC10(priv, MVPP2_PE_FIRST_FREE_TID,
					MVPP2_PE_LAST_FREE_TID);
	if (tid < 0)
		return tid;

	pe.index = tid;
	/* Clear ri before updating */
	pe.sram[MVPP2_PRS_SRAM_RI_WORD] = 0x0;
	pe.sram[MVPP2_PRS_SRAM_RI_CTRL_WORD] = 0x0;
	FUNC6(&pe, ri, ri_mask);

	FUNC6(&pe, ri | MVPP2_PRS_RI_IP_FRAG_TRUE,
				 ri_mask | MVPP2_PRS_RI_IP_FRAG_MASK);

	FUNC9(&pe, 2, 0x00, 0x0);
	FUNC9(&pe, 3, 0x00, 0x0);

	/* Update shadow table and hw entry */
	FUNC2(priv, pe.index, MVPP2_PRS_LU_IP4);
	FUNC1(priv, &pe);

	return 0;
}