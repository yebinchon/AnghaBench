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
struct net_device {int /*<<< orphan*/  phydev; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  mtu; } ;
struct ag71xx {int /*<<< orphan*/  rx_buf_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  AG71XX_REG_MAC_MFL ; 
 scalar_t__ NET_IP_ALIGN ; 
 scalar_t__ NET_SKB_PAD ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC2 (struct ag71xx*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC5 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC6 (struct ag71xx*,int /*<<< orphan*/ ,unsigned int) ; 
 struct ag71xx* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct net_device *ndev)
{
	struct ag71xx *ag = FUNC7(ndev);
	unsigned int max_frame_len;
	int ret;

	max_frame_len = FUNC3(ndev->mtu);
	ag->rx_buf_size =
		FUNC0(max_frame_len + NET_SKB_PAD + NET_IP_ALIGN);

	/* setup max frame length */
	FUNC6(ag, AG71XX_REG_MAC_MFL, max_frame_len);
	FUNC2(ag, ndev->dev_addr);

	ret = FUNC1(ag);
	if (ret)
		goto err;

	ret = FUNC4(ag);
	if (ret)
		goto err;

	FUNC8(ndev->phydev);

	return 0;

err:
	FUNC5(ag);
	return ret;
}