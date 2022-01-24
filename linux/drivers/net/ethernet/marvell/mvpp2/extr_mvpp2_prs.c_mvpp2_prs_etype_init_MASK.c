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
struct mvpp2_prs_entry {int index; int* sram; } ;
struct mvpp2 {TYPE_1__* prs_shadow; } ;
typedef  int /*<<< orphan*/  pe ;
struct TYPE_2__ {int finish; void* udf; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_ARP ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int /*<<< orphan*/  ETH_P_PPP_SES ; 
 scalar_t__ MVPP2_ETH_TYPE_LEN ; 
 int /*<<< orphan*/  MVPP2_IP_LBDT_TYPE ; 
 scalar_t__ MVPP2_MAX_L3_ADDR_SIZE ; 
 size_t MVPP2_PE_ETH_TYPE_UN ; 
 int /*<<< orphan*/  MVPP2_PE_FIRST_FREE_TID ; 
 int /*<<< orphan*/  MVPP2_PE_LAST_FREE_TID ; 
 scalar_t__ MVPP2_PPPOE_HDR_SIZE ; 
 int MVPP2_PRS_IPV4_HEAD ; 
 int MVPP2_PRS_IPV4_HEAD_MASK ; 
 int MVPP2_PRS_IPV4_IHL ; 
 int MVPP2_PRS_IPV4_IHL_MASK ; 
 int /*<<< orphan*/  MVPP2_PRS_LU_FLOWS ; 
 int /*<<< orphan*/  MVPP2_PRS_LU_IP4 ; 
 int /*<<< orphan*/  MVPP2_PRS_LU_IP6 ; 
 int /*<<< orphan*/  MVPP2_PRS_LU_L2 ; 
 int /*<<< orphan*/  MVPP2_PRS_LU_PPPOE ; 
 int /*<<< orphan*/  MVPP2_PRS_PORT_MASK ; 
 int MVPP2_PRS_RI_CPU_CODE_MASK ; 
 int MVPP2_PRS_RI_CPU_CODE_RX_SPEC ; 
 int MVPP2_PRS_RI_L3_ARP ; 
 int MVPP2_PRS_RI_L3_IP4 ; 
 int MVPP2_PRS_RI_L3_IP4_OPT ; 
 int MVPP2_PRS_RI_L3_IP6 ; 
 int MVPP2_PRS_RI_L3_PROTO_MASK ; 
 int MVPP2_PRS_RI_L3_UN ; 
 int MVPP2_PRS_RI_PPPOE_MASK ; 
 int MVPP2_PRS_RI_UDF3_MASK ; 
 int MVPP2_PRS_RI_UDF3_RX_SPECIAL ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_LU_GEN_BIT ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_OP_SEL_UDF_ADD ; 
 size_t MVPP2_PRS_SRAM_RI_CTRL_WORD ; 
 size_t MVPP2_PRS_SRAM_RI_WORD ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_UDF_TYPE_L3 ; 
 void* MVPP2_PRS_UDF_L2_DEF ; 
 int /*<<< orphan*/  FUNC0 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mvpp2*,struct mvpp2_prs_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mvpp2*,size_t,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mvpp2*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mvpp2_prs_entry*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mvpp2_prs_entry*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mvpp2_prs_entry*,scalar_t__,int,int) ; 
 int FUNC11 (struct mvpp2*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct mvpp2 *priv)
{
	struct mvpp2_prs_entry pe;
	int tid;

	/* Ethertype: PPPoE */
	tid = FUNC11(priv, MVPP2_PE_FIRST_FREE_TID,
					MVPP2_PE_LAST_FREE_TID);
	if (tid < 0)
		return tid;

	FUNC0(&pe, 0, sizeof(pe));
	FUNC12(&pe, MVPP2_PRS_LU_L2);
	pe.index = tid;

	FUNC2(&pe, 0, ETH_P_PPP_SES);

	FUNC9(&pe, MVPP2_PPPOE_HDR_SIZE,
				 MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD);
	FUNC6(&pe, MVPP2_PRS_LU_PPPOE);
	FUNC8(&pe, MVPP2_PRS_RI_PPPOE_MASK,
				 MVPP2_PRS_RI_PPPOE_MASK);

	/* Update shadow table and hw entry */
	FUNC4(priv, pe.index, MVPP2_PRS_LU_L2);
	priv->prs_shadow[pe.index].udf = MVPP2_PRS_UDF_L2_DEF;
	priv->prs_shadow[pe.index].finish = false;
	FUNC3(priv, pe.index, MVPP2_PRS_RI_PPPOE_MASK,
				MVPP2_PRS_RI_PPPOE_MASK);
	FUNC1(priv, &pe);

	/* Ethertype: ARP */
	tid = FUNC11(priv, MVPP2_PE_FIRST_FREE_TID,
					MVPP2_PE_LAST_FREE_TID);
	if (tid < 0)
		return tid;

	FUNC0(&pe, 0, sizeof(pe));
	FUNC12(&pe, MVPP2_PRS_LU_L2);
	pe.index = tid;

	FUNC2(&pe, 0, ETH_P_ARP);

	/* Generate flow in the next iteration*/
	FUNC6(&pe, MVPP2_PRS_LU_FLOWS);
	FUNC5(&pe, MVPP2_PRS_SRAM_LU_GEN_BIT, 1);
	FUNC8(&pe, MVPP2_PRS_RI_L3_ARP,
				 MVPP2_PRS_RI_L3_PROTO_MASK);
	/* Set L3 offset */
	FUNC7(&pe, MVPP2_PRS_SRAM_UDF_TYPE_L3,
				  MVPP2_ETH_TYPE_LEN,
				  MVPP2_PRS_SRAM_OP_SEL_UDF_ADD);

	/* Update shadow table and hw entry */
	FUNC4(priv, pe.index, MVPP2_PRS_LU_L2);
	priv->prs_shadow[pe.index].udf = MVPP2_PRS_UDF_L2_DEF;
	priv->prs_shadow[pe.index].finish = true;
	FUNC3(priv, pe.index, MVPP2_PRS_RI_L3_ARP,
				MVPP2_PRS_RI_L3_PROTO_MASK);
	FUNC1(priv, &pe);

	/* Ethertype: LBTD */
	tid = FUNC11(priv, MVPP2_PE_FIRST_FREE_TID,
					MVPP2_PE_LAST_FREE_TID);
	if (tid < 0)
		return tid;

	FUNC0(&pe, 0, sizeof(pe));
	FUNC12(&pe, MVPP2_PRS_LU_L2);
	pe.index = tid;

	FUNC2(&pe, 0, MVPP2_IP_LBDT_TYPE);

	/* Generate flow in the next iteration*/
	FUNC6(&pe, MVPP2_PRS_LU_FLOWS);
	FUNC5(&pe, MVPP2_PRS_SRAM_LU_GEN_BIT, 1);
	FUNC8(&pe, MVPP2_PRS_RI_CPU_CODE_RX_SPEC |
				 MVPP2_PRS_RI_UDF3_RX_SPECIAL,
				 MVPP2_PRS_RI_CPU_CODE_MASK |
				 MVPP2_PRS_RI_UDF3_MASK);
	/* Set L3 offset */
	FUNC7(&pe, MVPP2_PRS_SRAM_UDF_TYPE_L3,
				  MVPP2_ETH_TYPE_LEN,
				  MVPP2_PRS_SRAM_OP_SEL_UDF_ADD);

	/* Update shadow table and hw entry */
	FUNC4(priv, pe.index, MVPP2_PRS_LU_L2);
	priv->prs_shadow[pe.index].udf = MVPP2_PRS_UDF_L2_DEF;
	priv->prs_shadow[pe.index].finish = true;
	FUNC3(priv, pe.index, MVPP2_PRS_RI_CPU_CODE_RX_SPEC |
				MVPP2_PRS_RI_UDF3_RX_SPECIAL,
				MVPP2_PRS_RI_CPU_CODE_MASK |
				MVPP2_PRS_RI_UDF3_MASK);
	FUNC1(priv, &pe);

	/* Ethertype: IPv4 without options */
	tid = FUNC11(priv, MVPP2_PE_FIRST_FREE_TID,
					MVPP2_PE_LAST_FREE_TID);
	if (tid < 0)
		return tid;

	FUNC0(&pe, 0, sizeof(pe));
	FUNC12(&pe, MVPP2_PRS_LU_L2);
	pe.index = tid;

	FUNC2(&pe, 0, ETH_P_IP);
	FUNC10(&pe, MVPP2_ETH_TYPE_LEN,
				     MVPP2_PRS_IPV4_HEAD | MVPP2_PRS_IPV4_IHL,
				     MVPP2_PRS_IPV4_HEAD_MASK |
				     MVPP2_PRS_IPV4_IHL_MASK);

	FUNC6(&pe, MVPP2_PRS_LU_IP4);
	FUNC8(&pe, MVPP2_PRS_RI_L3_IP4,
				 MVPP2_PRS_RI_L3_PROTO_MASK);
	/* Skip eth_type + 4 bytes of IP header */
	FUNC9(&pe, MVPP2_ETH_TYPE_LEN + 4,
				 MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD);
	/* Set L3 offset */
	FUNC7(&pe, MVPP2_PRS_SRAM_UDF_TYPE_L3,
				  MVPP2_ETH_TYPE_LEN,
				  MVPP2_PRS_SRAM_OP_SEL_UDF_ADD);

	/* Update shadow table and hw entry */
	FUNC4(priv, pe.index, MVPP2_PRS_LU_L2);
	priv->prs_shadow[pe.index].udf = MVPP2_PRS_UDF_L2_DEF;
	priv->prs_shadow[pe.index].finish = false;
	FUNC3(priv, pe.index, MVPP2_PRS_RI_L3_IP4,
				MVPP2_PRS_RI_L3_PROTO_MASK);
	FUNC1(priv, &pe);

	/* Ethertype: IPv4 with options */
	tid = FUNC11(priv, MVPP2_PE_FIRST_FREE_TID,
					MVPP2_PE_LAST_FREE_TID);
	if (tid < 0)
		return tid;

	pe.index = tid;

	FUNC10(&pe, MVPP2_ETH_TYPE_LEN,
				     MVPP2_PRS_IPV4_HEAD,
				     MVPP2_PRS_IPV4_HEAD_MASK);

	/* Clear ri before updating */
	pe.sram[MVPP2_PRS_SRAM_RI_WORD] = 0x0;
	pe.sram[MVPP2_PRS_SRAM_RI_CTRL_WORD] = 0x0;
	FUNC8(&pe, MVPP2_PRS_RI_L3_IP4_OPT,
				 MVPP2_PRS_RI_L3_PROTO_MASK);

	/* Update shadow table and hw entry */
	FUNC4(priv, pe.index, MVPP2_PRS_LU_L2);
	priv->prs_shadow[pe.index].udf = MVPP2_PRS_UDF_L2_DEF;
	priv->prs_shadow[pe.index].finish = false;
	FUNC3(priv, pe.index, MVPP2_PRS_RI_L3_IP4_OPT,
				MVPP2_PRS_RI_L3_PROTO_MASK);
	FUNC1(priv, &pe);

	/* Ethertype: IPv6 without options */
	tid = FUNC11(priv, MVPP2_PE_FIRST_FREE_TID,
					MVPP2_PE_LAST_FREE_TID);
	if (tid < 0)
		return tid;

	FUNC0(&pe, 0, sizeof(pe));
	FUNC12(&pe, MVPP2_PRS_LU_L2);
	pe.index = tid;

	FUNC2(&pe, 0, ETH_P_IPV6);

	/* Skip DIP of IPV6 header */
	FUNC9(&pe, MVPP2_ETH_TYPE_LEN + 8 +
				 MVPP2_MAX_L3_ADDR_SIZE,
				 MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD);
	FUNC6(&pe, MVPP2_PRS_LU_IP6);
	FUNC8(&pe, MVPP2_PRS_RI_L3_IP6,
				 MVPP2_PRS_RI_L3_PROTO_MASK);
	/* Set L3 offset */
	FUNC7(&pe, MVPP2_PRS_SRAM_UDF_TYPE_L3,
				  MVPP2_ETH_TYPE_LEN,
				  MVPP2_PRS_SRAM_OP_SEL_UDF_ADD);

	FUNC4(priv, pe.index, MVPP2_PRS_LU_L2);
	priv->prs_shadow[pe.index].udf = MVPP2_PRS_UDF_L2_DEF;
	priv->prs_shadow[pe.index].finish = false;
	FUNC3(priv, pe.index, MVPP2_PRS_RI_L3_IP6,
				MVPP2_PRS_RI_L3_PROTO_MASK);
	FUNC1(priv, &pe);

	/* Default entry for MVPP2_PRS_LU_L2 - Unknown ethtype */
	FUNC0(&pe, 0, sizeof(struct mvpp2_prs_entry));
	FUNC12(&pe, MVPP2_PRS_LU_L2);
	pe.index = MVPP2_PE_ETH_TYPE_UN;

	/* Unmask all ports */
	FUNC13(&pe, MVPP2_PRS_PORT_MASK);

	/* Generate flow in the next iteration*/
	FUNC5(&pe, MVPP2_PRS_SRAM_LU_GEN_BIT, 1);
	FUNC6(&pe, MVPP2_PRS_LU_FLOWS);
	FUNC8(&pe, MVPP2_PRS_RI_L3_UN,
				 MVPP2_PRS_RI_L3_PROTO_MASK);
	/* Set L3 offset even it's unknown L3 */
	FUNC7(&pe, MVPP2_PRS_SRAM_UDF_TYPE_L3,
				  MVPP2_ETH_TYPE_LEN,
				  MVPP2_PRS_SRAM_OP_SEL_UDF_ADD);

	/* Update shadow table and hw entry */
	FUNC4(priv, pe.index, MVPP2_PRS_LU_L2);
	priv->prs_shadow[pe.index].udf = MVPP2_PRS_UDF_L2_DEF;
	priv->prs_shadow[pe.index].finish = true;
	FUNC3(priv, pe.index, MVPP2_PRS_RI_L3_UN,
				MVPP2_PRS_RI_L3_PROTO_MASK);
	FUNC1(priv, &pe);

	return 0;
}