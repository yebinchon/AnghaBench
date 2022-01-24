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
 int EINVAL ; 
 unsigned short IPPROTO_ICMPV6 ; 
 unsigned short IPPROTO_IPIP ; 
 unsigned short IPPROTO_TCP ; 
 unsigned short IPPROTO_UDP ; 
 int /*<<< orphan*/  MVPP2_PE_FIRST_FREE_TID ; 
 int /*<<< orphan*/  MVPP2_PE_LAST_FREE_TID ; 
 int /*<<< orphan*/  MVPP2_PRS_IPV6_NO_EXT_AI_BIT ; 
 int /*<<< orphan*/  MVPP2_PRS_LU_FLOWS ; 
 int /*<<< orphan*/  MVPP2_PRS_LU_IP6 ; 
 int /*<<< orphan*/  MVPP2_PRS_PORT_MASK ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_LU_GEN_BIT ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_OP_SEL_UDF_ADD ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_UDF_TYPE_L4 ; 
 int /*<<< orphan*/  MVPP2_PRS_TCAM_PROTO_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mvpp2*,struct mvpp2_prs_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct mvpp2*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mvpp2_prs_entry*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,unsigned short,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct mvpp2*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct mvpp2 *priv, unsigned short proto,
			       unsigned int ri, unsigned int ri_mask)
{
	struct mvpp2_prs_entry pe;
	int tid;

	if ((proto != IPPROTO_TCP) && (proto != IPPROTO_UDP) &&
	    (proto != IPPROTO_ICMPV6) && (proto != IPPROTO_IPIP))
		return -EINVAL;

	tid = FUNC9(priv, MVPP2_PE_FIRST_FREE_TID,
					MVPP2_PE_LAST_FREE_TID);
	if (tid < 0)
		return tid;

	FUNC0(&pe, 0, sizeof(pe));
	FUNC10(&pe, MVPP2_PRS_LU_IP6);
	pe.index = tid;

	/* Finished: go to flowid generation */
	FUNC4(&pe, MVPP2_PRS_LU_FLOWS);
	FUNC3(&pe, MVPP2_PRS_SRAM_LU_GEN_BIT, 1);
	FUNC6(&pe, ri, ri_mask);
	FUNC5(&pe, MVPP2_PRS_SRAM_UDF_TYPE_L4,
				  sizeof(struct ipv6hdr) - 6,
				  MVPP2_PRS_SRAM_OP_SEL_UDF_ADD);

	FUNC8(&pe, 0, proto, MVPP2_PRS_TCAM_PROTO_MASK);
	FUNC7(&pe, MVPP2_PRS_IPV6_NO_EXT_AI_BIT,
				 MVPP2_PRS_IPV6_NO_EXT_AI_BIT);
	/* Unmask all ports */
	FUNC11(&pe, MVPP2_PRS_PORT_MASK);

	/* Write HW */
	FUNC2(priv, pe.index, MVPP2_PRS_LU_IP6);
	FUNC1(priv, &pe);

	return 0;
}