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
struct usbnet {scalar_t__* data; } ;
struct smsc95xx_priv {int /*<<< orphan*/  mac_cr; int /*<<< orphan*/  mac_cr_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAC_CR ; 
 int /*<<< orphan*/  MAC_CR_TXEN_ ; 
 int /*<<< orphan*/  TX_CFG ; 
 int /*<<< orphan*/  TX_CFG_ON_ ; 
 int FUNC0 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct usbnet *dev)
{
	struct smsc95xx_priv *pdata = (struct smsc95xx_priv *)(dev->data[0]);
	unsigned long flags;
	int ret;

	/* Enable Tx at MAC */
	FUNC1(&pdata->mac_cr_lock, flags);
	pdata->mac_cr |= MAC_CR_TXEN_;
	FUNC2(&pdata->mac_cr_lock, flags);

	ret = FUNC0(dev, MAC_CR, pdata->mac_cr);
	if (ret < 0)
		return ret;

	/* Enable Tx at SCSRs */
	return FUNC0(dev, TX_CFG, TX_CFG_ON_);
}