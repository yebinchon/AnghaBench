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
typedef  int u32 ;
struct pxa168_eth_private {int /*<<< orphan*/  work_todo; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int ICR_RXBUF ; 
 int ICR_TXBUF_H ; 
 int ICR_TXBUF_L ; 
 int /*<<< orphan*/  INT_CAUSE ; 
 int IRQ_NONE ; 
 int /*<<< orphan*/  WORK_TX_DONE ; 
 int FUNC0 (struct pxa168_eth_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pxa168_eth_private*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct pxa168_eth_private *pep,
				     struct net_device *dev)
{
	u32 icr;
	int ret = 0;

	icr = FUNC0(pep, INT_CAUSE);
	if (icr == 0)
		return IRQ_NONE;

	FUNC1(pep, INT_CAUSE, ~icr);
	if (icr & (ICR_TXBUF_H | ICR_TXBUF_L)) {
		pep->work_todo |= WORK_TX_DONE;
		ret = 1;
	}
	if (icr & ICR_RXBUF)
		ret = 1;
	return ret;
}