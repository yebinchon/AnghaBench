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
struct mvpp2_prs_entry {scalar_t__ index; } ;
struct mvpp2 {int dummy; } ;
typedef  int /*<<< orphan*/  pe ;

/* Variables and functions */
 int MVPP2_MAX_PORTS ; 
 scalar_t__ MVPP2_PE_FIRST_DEFAULT_FLOW ; 
 int /*<<< orphan*/  MVPP2_PRS_FLOW_ID_MASK ; 
 int /*<<< orphan*/  MVPP2_PRS_LU_FLOWS ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_LU_DONE_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mvpp2*,struct mvpp2_prs_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct mvpp2*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mvpp2_prs_entry*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct mvpp2 *priv)
{
	struct mvpp2_prs_entry pe;
	int port;

	for (port = 0; port < MVPP2_MAX_PORTS; port++) {
		FUNC0(&pe, 0, sizeof(pe));
		FUNC5(&pe, MVPP2_PRS_LU_FLOWS);
		pe.index = MVPP2_PE_FIRST_DEFAULT_FLOW - port;

		/* Mask all ports */
		FUNC6(&pe, 0);

		/* Set flow ID*/
		FUNC3(&pe, port, MVPP2_PRS_FLOW_ID_MASK);
		FUNC4(&pe, MVPP2_PRS_SRAM_LU_DONE_BIT, 1);

		/* Update shadow table and hw entry */
		FUNC2(priv, pe.index, MVPP2_PRS_LU_FLOWS);
		FUNC1(priv, &pe);
	}
}