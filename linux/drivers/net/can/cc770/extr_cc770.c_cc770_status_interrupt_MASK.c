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
struct net_device {int dummy; } ;
struct cc770_priv {int dummy; } ;

/* Variables and functions */
 int STAT_BOFF ; 
 int STAT_LEC_MASK ; 
 int STAT_WARN ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int) ; 
 int FUNC1 (struct cc770_priv*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cc770_priv*,int,int) ; 
 struct cc770_priv* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev)
{
	struct cc770_priv *priv = FUNC3(dev);
	u8 status;

	status = FUNC1(priv, status);
	/* Reset the status register including RXOK and TXOK */
	FUNC2(priv, status, STAT_LEC_MASK);

	if (status & (STAT_WARN | STAT_BOFF) ||
	    (status & STAT_LEC_MASK) != STAT_LEC_MASK) {
		FUNC0(dev, status);
		return status & STAT_BOFF;
	}

	return 0;
}