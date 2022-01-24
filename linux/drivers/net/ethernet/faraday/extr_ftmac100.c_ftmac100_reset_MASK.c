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
struct net_device {int dummy; } ;
struct ftmac100 {scalar_t__ base; struct net_device* netdev; } ;

/* Variables and functions */
 int EIO ; 
 unsigned int FTMAC100_MACCR_SW_RST ; 
 scalar_t__ FTMAC100_OFFSET_MACCR ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct ftmac100 *priv)
{
	struct net_device *netdev = priv->netdev;
	int i;

	/* NOTE: reset clears all registers */
	FUNC1(FTMAC100_MACCR_SW_RST, priv->base + FTMAC100_OFFSET_MACCR);

	for (i = 0; i < 5; i++) {
		unsigned int maccr;

		maccr = FUNC0(priv->base + FTMAC100_OFFSET_MACCR);
		if (!(maccr & FTMAC100_MACCR_SW_RST)) {
			/*
			 * FTMAC100_MACCR_SW_RST cleared does not indicate
			 * that hardware reset completed (what the f*ck).
			 * We still need to wait for a while.
			 */
			FUNC3(500);
			return 0;
		}

		FUNC3(1000);
	}

	FUNC2(netdev, "software reset failed\n");
	return -EIO;
}