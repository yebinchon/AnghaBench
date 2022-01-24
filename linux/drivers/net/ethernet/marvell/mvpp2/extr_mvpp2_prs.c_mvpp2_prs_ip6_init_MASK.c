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
struct mvpp2_prs_entry {int index; } ;
struct mvpp2 {int dummy; } ;
struct ipv6hdr {int dummy; } ;
typedef  int /*<<< orphan*/  pe ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_ICMPV6 ; 
 int /*<<< orphan*/  IPPROTO_IPIP ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  MVPP2_PE_FIRST_FREE_TID ; 
 int MVPP2_PE_IP6_ADDR_UN ; 
 int MVPP2_PE_IP6_EXT_PROTO_UN ; 
 int MVPP2_PE_IP6_PROTO_UN ; 
 int /*<<< orphan*/  MVPP2_PE_LAST_FREE_TID ; 
 int /*<<< orphan*/  MVPP2_PRS_IPV6_EXT_AI_BIT ; 
 int /*<<< orphan*/  MVPP2_PRS_IPV6_HOP_MASK ; 
 int /*<<< orphan*/  MVPP2_PRS_IPV6_NO_EXT_AI_BIT ; 
 int /*<<< orphan*/  MVPP2_PRS_L3_MULTI_CAST ; 
 int /*<<< orphan*/  MVPP2_PRS_LU_FLOWS ; 
 int /*<<< orphan*/  MVPP2_PRS_LU_IP4 ; 
 int /*<<< orphan*/  MVPP2_PRS_LU_IP6 ; 
 int /*<<< orphan*/  MVPP2_PRS_PORT_MASK ; 
 int MVPP2_PRS_RI_CPU_CODE_MASK ; 
 int MVPP2_PRS_RI_CPU_CODE_RX_SPEC ; 
 int MVPP2_PRS_RI_DROP_MASK ; 
 int MVPP2_PRS_RI_L3_ADDR_MASK ; 
 int MVPP2_PRS_RI_L3_PROTO_MASK ; 
 int MVPP2_PRS_RI_L3_UCAST ; 
 int MVPP2_PRS_RI_L3_UN ; 
 int MVPP2_PRS_RI_L4_OTHER ; 
 int MVPP2_PRS_RI_L4_PROTO_MASK ; 
 int MVPP2_PRS_RI_L4_TCP ; 
 int MVPP2_PRS_RI_L4_UDP ; 
 int MVPP2_PRS_RI_UDF3_MASK ; 
 int MVPP2_PRS_RI_UDF3_RX_SPECIAL ; 
 int MVPP2_PRS_RI_UDF7_IP6_LITE ; 
 int MVPP2_PRS_RI_UDF7_MASK ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_LU_GEN_BIT ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_OP_SEL_UDF_ADD ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_UDF_TYPE_L4 ; 
 int /*<<< orphan*/  FUNC0 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mvpp2*,struct mvpp2_prs_entry*) ; 
 int FUNC2 (struct mvpp2*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mvpp2*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mvpp2*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mvpp2_prs_entry*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct mvpp2_prs_entry*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct mvpp2_prs_entry*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct mvpp2*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct mvpp2 *priv)
{
	struct mvpp2_prs_entry pe;
	int tid, err;

	/* Set entries for TCP, UDP and ICMP over IPv6 */
	err = FUNC3(priv, IPPROTO_TCP,
				  MVPP2_PRS_RI_L4_TCP,
				  MVPP2_PRS_RI_L4_PROTO_MASK);
	if (err)
		return err;

	err = FUNC3(priv, IPPROTO_UDP,
				  MVPP2_PRS_RI_L4_UDP,
				  MVPP2_PRS_RI_L4_PROTO_MASK);
	if (err)
		return err;

	err = FUNC3(priv, IPPROTO_ICMPV6,
				  MVPP2_PRS_RI_CPU_CODE_RX_SPEC |
				  MVPP2_PRS_RI_UDF3_RX_SPECIAL,
				  MVPP2_PRS_RI_CPU_CODE_MASK |
				  MVPP2_PRS_RI_UDF3_MASK);
	if (err)
		return err;

	/* IPv4 is the last header. This is similar case as 6-TCP or 17-UDP */
	/* Result Info: UDF7=1, DS lite */
	err = FUNC3(priv, IPPROTO_IPIP,
				  MVPP2_PRS_RI_UDF7_IP6_LITE,
				  MVPP2_PRS_RI_UDF7_MASK);
	if (err)
		return err;

	/* IPv6 multicast */
	err = FUNC2(priv, MVPP2_PRS_L3_MULTI_CAST);
	if (err)
		return err;

	/* Entry for checking hop limit */
	tid = FUNC13(priv, MVPP2_PE_FIRST_FREE_TID,
					MVPP2_PE_LAST_FREE_TID);
	if (tid < 0)
		return tid;

	FUNC0(&pe, 0, sizeof(pe));
	FUNC14(&pe, MVPP2_PRS_LU_IP6);
	pe.index = tid;

	/* Finished: go to flowid generation */
	FUNC7(&pe, MVPP2_PRS_LU_FLOWS);
	FUNC6(&pe, MVPP2_PRS_SRAM_LU_GEN_BIT, 1);
	FUNC9(&pe, MVPP2_PRS_RI_L3_UN |
				 MVPP2_PRS_RI_DROP_MASK,
				 MVPP2_PRS_RI_L3_PROTO_MASK |
				 MVPP2_PRS_RI_DROP_MASK);

	FUNC12(&pe, 1, 0x00, MVPP2_PRS_IPV6_HOP_MASK);
	FUNC11(&pe, MVPP2_PRS_IPV6_NO_EXT_AI_BIT,
				 MVPP2_PRS_IPV6_NO_EXT_AI_BIT);

	/* Update shadow table and hw entry */
	FUNC4(priv, pe.index, MVPP2_PRS_LU_IP4);
	FUNC1(priv, &pe);

	/* Default IPv6 entry for unknown protocols */
	FUNC0(&pe, 0, sizeof(pe));
	FUNC14(&pe, MVPP2_PRS_LU_IP6);
	pe.index = MVPP2_PE_IP6_PROTO_UN;

	/* Finished: go to flowid generation */
	FUNC7(&pe, MVPP2_PRS_LU_FLOWS);
	FUNC6(&pe, MVPP2_PRS_SRAM_LU_GEN_BIT, 1);
	FUNC9(&pe, MVPP2_PRS_RI_L4_OTHER,
				 MVPP2_PRS_RI_L4_PROTO_MASK);
	/* Set L4 offset relatively to our current place */
	FUNC8(&pe, MVPP2_PRS_SRAM_UDF_TYPE_L4,
				  sizeof(struct ipv6hdr) - 4,
				  MVPP2_PRS_SRAM_OP_SEL_UDF_ADD);

	FUNC11(&pe, MVPP2_PRS_IPV6_NO_EXT_AI_BIT,
				 MVPP2_PRS_IPV6_NO_EXT_AI_BIT);
	/* Unmask all ports */
	FUNC15(&pe, MVPP2_PRS_PORT_MASK);

	/* Update shadow table and hw entry */
	FUNC4(priv, pe.index, MVPP2_PRS_LU_IP4);
	FUNC1(priv, &pe);

	/* Default IPv6 entry for unknown ext protocols */
	FUNC0(&pe, 0, sizeof(struct mvpp2_prs_entry));
	FUNC14(&pe, MVPP2_PRS_LU_IP6);
	pe.index = MVPP2_PE_IP6_EXT_PROTO_UN;

	/* Finished: go to flowid generation */
	FUNC7(&pe, MVPP2_PRS_LU_FLOWS);
	FUNC6(&pe, MVPP2_PRS_SRAM_LU_GEN_BIT, 1);
	FUNC9(&pe, MVPP2_PRS_RI_L4_OTHER,
				 MVPP2_PRS_RI_L4_PROTO_MASK);

	FUNC11(&pe, MVPP2_PRS_IPV6_EXT_AI_BIT,
				 MVPP2_PRS_IPV6_EXT_AI_BIT);
	/* Unmask all ports */
	FUNC15(&pe, MVPP2_PRS_PORT_MASK);

	/* Update shadow table and hw entry */
	FUNC4(priv, pe.index, MVPP2_PRS_LU_IP4);
	FUNC1(priv, &pe);

	/* Default IPv6 entry for unicast address */
	FUNC0(&pe, 0, sizeof(struct mvpp2_prs_entry));
	FUNC14(&pe, MVPP2_PRS_LU_IP6);
	pe.index = MVPP2_PE_IP6_ADDR_UN;

	/* Finished: go to IPv6 again */
	FUNC7(&pe, MVPP2_PRS_LU_IP6);
	FUNC9(&pe, MVPP2_PRS_RI_L3_UCAST,
				 MVPP2_PRS_RI_L3_ADDR_MASK);
	FUNC5(&pe, MVPP2_PRS_IPV6_NO_EXT_AI_BIT,
				 MVPP2_PRS_IPV6_NO_EXT_AI_BIT);
	/* Shift back to IPV6 NH */
	FUNC10(&pe, -18, MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD);

	FUNC11(&pe, 0, MVPP2_PRS_IPV6_NO_EXT_AI_BIT);
	/* Unmask all ports */
	FUNC15(&pe, MVPP2_PRS_PORT_MASK);

	/* Update shadow table and hw entry */
	FUNC4(priv, pe.index, MVPP2_PRS_LU_IP6);
	FUNC1(priv, &pe);

	return 0;
}