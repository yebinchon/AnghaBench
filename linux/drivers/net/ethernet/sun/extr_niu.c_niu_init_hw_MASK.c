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
struct tx_ring_info {int dummy; } ;
struct niu {int num_tx_rings; int /*<<< orphan*/  dev; struct tx_ring_info* tx_rings; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  ifup ; 
 int /*<<< orphan*/  FUNC0 (struct niu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct niu*) ; 
 int FUNC2 (struct niu*) ; 
 int FUNC3 (struct niu*) ; 
 int FUNC4 (struct niu*) ; 
 int FUNC5 (struct niu*,struct tx_ring_info*) ; 
 int FUNC6 (struct niu*) ; 
 int FUNC7 (struct niu*) ; 
 int /*<<< orphan*/  FUNC8 (struct niu*) ; 
 int /*<<< orphan*/  FUNC9 (struct niu*) ; 
 int /*<<< orphan*/  FUNC10 (struct niu*) ; 
 int /*<<< orphan*/  FUNC11 (struct niu*) ; 
 int /*<<< orphan*/  FUNC12 (struct niu*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct niu*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct niu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct niu *np)
{
	int i, err;

	FUNC0(np, ifup, KERN_DEBUG, np->dev, "Initialize TXC\n");
	FUNC12(np, 1);
	FUNC13(np, 1);
	FUNC14(np, 0);

	FUNC0(np, ifup, KERN_DEBUG, np->dev, "Initialize TX channels\n");
	for (i = 0; i < np->num_tx_rings; i++) {
		struct tx_ring_info *rp = &np->tx_rings[i];

		err = FUNC5(np, rp);
		if (err)
			return err;
	}

	FUNC0(np, ifup, KERN_DEBUG, np->dev, "Initialize RX channels\n");
	err = FUNC6(np);
	if (err)
		goto out_uninit_tx_channels;

	FUNC0(np, ifup, KERN_DEBUG, np->dev, "Initialize classifier\n");
	err = FUNC2(np);
	if (err)
		goto out_uninit_rx_channels;

	FUNC0(np, ifup, KERN_DEBUG, np->dev, "Initialize ZCP\n");
	err = FUNC7(np);
	if (err)
		goto out_uninit_rx_channels;

	FUNC0(np, ifup, KERN_DEBUG, np->dev, "Initialize IPP\n");
	err = FUNC3(np);
	if (err)
		goto out_uninit_rx_channels;

	FUNC0(np, ifup, KERN_DEBUG, np->dev, "Initialize MAC\n");
	err = FUNC4(np);
	if (err)
		goto out_uninit_ipp;

	return 0;

out_uninit_ipp:
	FUNC0(np, ifup, KERN_DEBUG, np->dev, "Uninit IPP\n");
	FUNC1(np);

out_uninit_rx_channels:
	FUNC0(np, ifup, KERN_DEBUG, np->dev, "Uninit RX channels\n");
	FUNC10(np);
	FUNC8(np);

out_uninit_tx_channels:
	FUNC0(np, ifup, KERN_DEBUG, np->dev, "Uninit TX channels\n");
	FUNC11(np);
	FUNC9(np);

	return err;
}