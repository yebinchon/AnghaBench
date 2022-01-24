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
struct mvpp2_cls_c2_entry {int* attr; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int MVPP22_CLS_C2_ATTR0_QHIGH_MASK ; 
 int FUNC1 (int) ; 
 int MVPP22_CLS_C2_ATTR0_QLOW_MASK ; 
 int MVPP22_CLS_C2_ATTR2_RSS_EN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mvpp2_cls_c2_entry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct mvpp2_cls_c2_entry*) ; 

__attribute__((used)) static void FUNC5(struct mvpp2_port *port)
{
	struct mvpp2_cls_c2_entry c2;
	u8 qh, ql;

	FUNC3(port->priv, FUNC2(port->id), &c2);

	/* Reset the default destination RxQ to the port's first rx queue. */
	qh = (port->first_rxq >> 3) & MVPP22_CLS_C2_ATTR0_QHIGH_MASK;
	ql = port->first_rxq & MVPP22_CLS_C2_ATTR0_QLOW_MASK;

	c2.attr[0] = FUNC0(qh) |
		      FUNC1(ql);

	c2.attr[2] &= ~MVPP22_CLS_C2_ATTR2_RSS_EN;

	FUNC4(port->priv, &c2);
}