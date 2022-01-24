#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device {int mtu; } ;
struct TYPE_2__ {int mtu; } ;
struct alx_priv {int /*<<< orphan*/  rxbuf_size; TYPE_1__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALX_DEF_RXBUF_SIZE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct alx_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct alx_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *netdev, int mtu)
{
	struct alx_priv *alx = FUNC3(netdev);
	int max_frame = FUNC0(mtu);

	netdev->mtu = mtu;
	alx->hw.mtu = mtu;
	alx->rxbuf_size = FUNC2(max_frame, ALX_DEF_RXBUF_SIZE);
	FUNC4(netdev);
	if (FUNC5(netdev))
		FUNC1(alx);
	return 0;
}