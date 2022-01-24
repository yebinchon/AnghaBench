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
typedef  int u8 ;
struct mvpp2_port {int first_rxq; int /*<<< orphan*/  priv; int /*<<< orphan*/  id; } ;
struct mvpp2_cls_c2_entry {int act; int* attr; int valid; int /*<<< orphan*/ * tcam; int /*<<< orphan*/  index; } ;
typedef  int /*<<< orphan*/  c2 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MVPP22_C2_FWD_SW_LOCK ; 
 int /*<<< orphan*/  MVPP22_C2_UPD ; 
 int /*<<< orphan*/  MVPP22_C2_UPD_LOCK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int MVPP22_CLS_C2_ATTR0_QHIGH_MASK ; 
 int FUNC6 (int) ; 
 int MVPP22_CLS_C2_ATTR0_QLOW_MASK ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MVPP22_CLS_LU_TYPE_ALL ; 
 int /*<<< orphan*/  MVPP2_CLS_LU_TYPE_MASK ; 
 int /*<<< orphan*/  FUNC11 (struct mvpp2_cls_c2_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct mvpp2_cls_c2_entry*) ; 

__attribute__((used)) static void FUNC13(struct mvpp2_port *port)
{
	struct mvpp2_cls_c2_entry c2;
	u8 qh, ql, pmap;

	FUNC11(&c2, 0, sizeof(c2));

	c2.index = FUNC9(port->id);

	pmap = FUNC0(port->id);
	c2.tcam[4] = FUNC8(pmap);
	c2.tcam[4] |= FUNC10(FUNC8(pmap));

	/* Match on Lookup Type */
	c2.tcam[4] |= FUNC10(FUNC7(MVPP2_CLS_LU_TYPE_MASK));
	c2.tcam[4] |= FUNC7(MVPP22_CLS_LU_TYPE_ALL);

	/* Update RSS status after matching this entry */
	c2.act = FUNC4(MVPP22_C2_UPD_LOCK);

	/* Mark packet as "forwarded to software", needed for RSS */
	c2.act |= FUNC1(MVPP22_C2_FWD_SW_LOCK);

	/* Configure the default rx queue : Update Queue Low and Queue High, but
	 * don't lock, since the rx queue selection might be overridden by RSS
	 */
	c2.act |= FUNC2(MVPP22_C2_UPD) |
		   FUNC3(MVPP22_C2_UPD);

	qh = (port->first_rxq >> 3) & MVPP22_CLS_C2_ATTR0_QHIGH_MASK;
	ql = port->first_rxq & MVPP22_CLS_C2_ATTR0_QLOW_MASK;

	c2.attr[0] = FUNC5(qh) |
		      FUNC6(ql);

	c2.valid = true;

	FUNC12(port->priv, &c2);
}