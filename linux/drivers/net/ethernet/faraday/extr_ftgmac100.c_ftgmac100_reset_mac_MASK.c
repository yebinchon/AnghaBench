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
typedef  unsigned int u32 ;
struct net_device {int dummy; } ;
struct ftgmac100 {scalar_t__ base; struct net_device* netdev; } ;

/* Variables and functions */
 int EIO ; 
 unsigned int FTGMAC100_MACCR_SW_RST ; 
 scalar_t__ FTGMAC100_OFFSET_MACCR ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct ftgmac100 *priv, u32 maccr)
{
	struct net_device *netdev = priv->netdev;
	int i;

	/* NOTE: reset clears all registers */
	FUNC1(maccr, priv->base + FTGMAC100_OFFSET_MACCR);
	FUNC1(maccr | FTGMAC100_MACCR_SW_RST,
		  priv->base + FTGMAC100_OFFSET_MACCR);
	for (i = 0; i < 200; i++) {
		unsigned int maccr;

		maccr = FUNC0(priv->base + FTGMAC100_OFFSET_MACCR);
		if (!(maccr & FTGMAC100_MACCR_SW_RST))
			return 0;

		FUNC3(1);
	}

	FUNC2(netdev, "Hardware reset failed\n");
	return -EIO;
}