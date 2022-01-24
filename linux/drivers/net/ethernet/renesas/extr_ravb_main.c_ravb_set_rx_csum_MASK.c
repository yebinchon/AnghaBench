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
struct ravb_private {int /*<<< orphan*/  lock; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECMR ; 
 int /*<<< orphan*/  ECMR_RCSC ; 
 struct ravb_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct net_device *ndev, bool enable)
{
	struct ravb_private *priv = FUNC0(ndev);
	unsigned long flags;

	FUNC4(&priv->lock, flags);

	/* Disable TX and RX */
	FUNC2(ndev);

	/* Modify RX Checksum setting */
	FUNC1(ndev, ECMR, ECMR_RCSC, enable ? ECMR_RCSC : 0);

	/* Enable TX and RX */
	FUNC3(ndev);

	FUNC5(&priv->lock, flags);
}