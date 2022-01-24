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
typedef  int /*<<< orphan*/  pe ;

/* Variables and functions */
 scalar_t__ MVPP2_ETH_TYPE_LEN ; 
 int /*<<< orphan*/  MVPP2_PE_FIRST_FREE_TID ; 
 int /*<<< orphan*/  MVPP2_PE_LAST_FREE_TID ; 
 int MVPP2_PRS_IPV4_HEAD ; 
 int MVPP2_PRS_IPV4_HEAD_MASK ; 
 int MVPP2_PRS_IPV4_IHL ; 
 int MVPP2_PRS_IPV4_IHL_MASK ; 
 int /*<<< orphan*/  MVPP2_PRS_LU_FLOWS ; 
 int /*<<< orphan*/  MVPP2_PRS_LU_IP4 ; 
 int /*<<< orphan*/  MVPP2_PRS_LU_IP6 ; 
 int /*<<< orphan*/  MVPP2_PRS_LU_PPPOE ; 
 int /*<<< orphan*/  MVPP2_PRS_RI_L3_IP4 ; 
 int /*<<< orphan*/  MVPP2_PRS_RI_L3_IP4_OPT ; 
 int /*<<< orphan*/  MVPP2_PRS_RI_L3_IP6 ; 
 int /*<<< orphan*/  MVPP2_PRS_RI_L3_PROTO_MASK ; 
 int /*<<< orphan*/  MVPP2_PRS_RI_L3_UN ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_LU_GEN_BIT ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_OP_SEL_UDF_ADD ; 
 size_t MVPP2_PRS_SRAM_RI_CTRL_WORD ; 
 size_t MVPP2_PRS_SRAM_RI_WORD ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_UDF_TYPE_L3 ; 
 int /*<<< orphan*/  PPP_IP ; 
 int /*<<< orphan*/  PPP_IPV6 ; 
 int /*<<< orphan*/  FUNC0 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mvpp2*,struct mvpp2_prs_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mvpp2*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mvpp2_prs_entry*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mvpp2_prs_entry*,scalar_t__,int,int) ; 
 int FUNC10 (struct mvpp2*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct mvpp2 *priv)
{
	struct mvpp2_prs_entry pe;
	int tid;

	/* IPv4 over PPPoE with options */
	tid = FUNC10(priv, MVPP2_PE_FIRST_FREE_TID,
					MVPP2_PE_LAST_FREE_TID);
	if (tid < 0)
		return tid;

	FUNC0(&pe, 0, sizeof(pe));
	FUNC11(&pe, MVPP2_PRS_LU_PPPOE);
	pe.index = tid;

	FUNC2(&pe, 0, PPP_IP);

	FUNC5(&pe, MVPP2_PRS_LU_IP4);
	FUNC7(&pe, MVPP2_PRS_RI_L3_IP4_OPT,
				 MVPP2_PRS_RI_L3_PROTO_MASK);
	/* Skip eth_type + 4 bytes of IP header */
	FUNC8(&pe, MVPP2_ETH_TYPE_LEN + 4,
				 MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD);
	/* Set L3 offset */
	FUNC6(&pe, MVPP2_PRS_SRAM_UDF_TYPE_L3,
				  MVPP2_ETH_TYPE_LEN,
				  MVPP2_PRS_SRAM_OP_SEL_UDF_ADD);

	/* Update shadow table and hw entry */
	FUNC3(priv, pe.index, MVPP2_PRS_LU_PPPOE);
	FUNC1(priv, &pe);

	/* IPv4 over PPPoE without options */
	tid = FUNC10(priv, MVPP2_PE_FIRST_FREE_TID,
					MVPP2_PE_LAST_FREE_TID);
	if (tid < 0)
		return tid;

	pe.index = tid;

	FUNC9(&pe, MVPP2_ETH_TYPE_LEN,
				     MVPP2_PRS_IPV4_HEAD | MVPP2_PRS_IPV4_IHL,
				     MVPP2_PRS_IPV4_HEAD_MASK |
				     MVPP2_PRS_IPV4_IHL_MASK);

	/* Clear ri before updating */
	pe.sram[MVPP2_PRS_SRAM_RI_WORD] = 0x0;
	pe.sram[MVPP2_PRS_SRAM_RI_CTRL_WORD] = 0x0;
	FUNC7(&pe, MVPP2_PRS_RI_L3_IP4,
				 MVPP2_PRS_RI_L3_PROTO_MASK);

	/* Update shadow table and hw entry */
	FUNC3(priv, pe.index, MVPP2_PRS_LU_PPPOE);
	FUNC1(priv, &pe);

	/* IPv6 over PPPoE */
	tid = FUNC10(priv, MVPP2_PE_FIRST_FREE_TID,
					MVPP2_PE_LAST_FREE_TID);
	if (tid < 0)
		return tid;

	FUNC0(&pe, 0, sizeof(pe));
	FUNC11(&pe, MVPP2_PRS_LU_PPPOE);
	pe.index = tid;

	FUNC2(&pe, 0, PPP_IPV6);

	FUNC5(&pe, MVPP2_PRS_LU_IP6);
	FUNC7(&pe, MVPP2_PRS_RI_L3_IP6,
				 MVPP2_PRS_RI_L3_PROTO_MASK);
	/* Skip eth_type + 4 bytes of IPv6 header */
	FUNC8(&pe, MVPP2_ETH_TYPE_LEN + 4,
				 MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD);
	/* Set L3 offset */
	FUNC6(&pe, MVPP2_PRS_SRAM_UDF_TYPE_L3,
				  MVPP2_ETH_TYPE_LEN,
				  MVPP2_PRS_SRAM_OP_SEL_UDF_ADD);

	/* Update shadow table and hw entry */
	FUNC3(priv, pe.index, MVPP2_PRS_LU_PPPOE);
	FUNC1(priv, &pe);

	/* Non-IP over PPPoE */
	tid = FUNC10(priv, MVPP2_PE_FIRST_FREE_TID,
					MVPP2_PE_LAST_FREE_TID);
	if (tid < 0)
		return tid;

	FUNC0(&pe, 0, sizeof(pe));
	FUNC11(&pe, MVPP2_PRS_LU_PPPOE);
	pe.index = tid;

	FUNC7(&pe, MVPP2_PRS_RI_L3_UN,
				 MVPP2_PRS_RI_L3_PROTO_MASK);

	/* Finished: go to flowid generation */
	FUNC5(&pe, MVPP2_PRS_LU_FLOWS);
	FUNC4(&pe, MVPP2_PRS_SRAM_LU_GEN_BIT, 1);
	/* Set L3 offset even if it's unknown L3 */
	FUNC6(&pe, MVPP2_PRS_SRAM_UDF_TYPE_L3,
				  MVPP2_ETH_TYPE_LEN,
				  MVPP2_PRS_SRAM_OP_SEL_UDF_ADD);

	/* Update shadow table and hw entry */
	FUNC3(priv, pe.index, MVPP2_PRS_LU_PPPOE);
	FUNC1(priv, &pe);

	return 0;
}