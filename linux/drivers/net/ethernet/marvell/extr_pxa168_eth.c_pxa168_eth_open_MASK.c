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
struct pxa168_eth_private {int /*<<< orphan*/  napi; scalar_t__ rx_curr_desc_q; scalar_t__ rx_used_desc_q; scalar_t__ rx_resource_err; } ;
struct net_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct pxa168_eth_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  pxa168_eth_int_handler ; 
 int FUNC6 (struct net_device*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int FUNC11 (struct net_device*) ; 

__attribute__((used)) static int FUNC12(struct net_device *dev)
{
	struct pxa168_eth_private *pep = FUNC4(dev);
	int err;

	err = FUNC6(dev);
	if (err)
		return err;

	err = FUNC7(dev->irq, pxa168_eth_int_handler, 0, dev->name, dev);
	if (err) {
		FUNC0(&dev->dev, "can't assign irq\n");
		return -EAGAIN;
	}
	pep->rx_resource_err = 0;
	err = FUNC9(dev);
	if (err != 0)
		goto out_free_irq;
	err = FUNC11(dev);
	if (err != 0)
		goto out_free_rx_skb;
	pep->rx_used_desc_q = 0;
	pep->rx_curr_desc_q = 0;

	/* Fill RX ring with skb's */
	FUNC10(dev);
	pep->rx_used_desc_q = 0;
	pep->rx_curr_desc_q = 0;
	FUNC5(dev);
	FUNC3(&pep->napi);
	FUNC1(dev);
	return 0;
out_free_rx_skb:
	FUNC8(dev);
out_free_irq:
	FUNC2(dev->irq, dev);
	return err;
}