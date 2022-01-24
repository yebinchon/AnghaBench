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
struct tx_info {int /*<<< orphan*/  numq; } ;
struct rx_info {int dummy; } ;
struct velocity_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  mac_regs; int /*<<< orphan*/  napi; struct tx_info tx; struct rx_info rx; int /*<<< orphan*/  options; int /*<<< orphan*/  dev; int /*<<< orphan*/  pdev; struct net_device* netdev; } ;
struct net_device {int mtu; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  VELOCITY_INIT_COLD ; 
 int /*<<< orphan*/  FUNC0 (struct velocity_info*) ; 
 struct velocity_info* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct velocity_info* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct velocity_info*) ; 
 int /*<<< orphan*/  FUNC12 (struct velocity_info*) ; 
 int /*<<< orphan*/  FUNC13 (struct velocity_info*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct velocity_info*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct velocity_info*) ; 

__attribute__((used)) static int FUNC16(struct net_device *dev, int new_mtu)
{
	struct velocity_info *vptr = FUNC5(dev);
	int ret = 0;

	if (!FUNC6(dev)) {
		dev->mtu = new_mtu;
		goto out_0;
	}

	if (dev->mtu != new_mtu) {
		struct velocity_info *tmp_vptr;
		unsigned long flags;
		struct rx_info rx;
		struct tx_info tx;

		tmp_vptr = FUNC1(sizeof(*tmp_vptr), GFP_KERNEL);
		if (!tmp_vptr) {
			ret = -ENOMEM;
			goto out_0;
		}

		tmp_vptr->netdev = dev;
		tmp_vptr->pdev = vptr->pdev;
		tmp_vptr->dev = vptr->dev;
		tmp_vptr->options = vptr->options;
		tmp_vptr->tx.numq = vptr->tx.numq;

		ret = FUNC14(tmp_vptr, new_mtu);
		if (ret < 0)
			goto out_free_tmp_vptr_1;

		FUNC3(&vptr->napi);

		FUNC9(&vptr->lock, flags);

		FUNC8(dev);
		FUNC15(vptr);

		rx = vptr->rx;
		tx = vptr->tx;

		vptr->rx = tmp_vptr->rx;
		vptr->tx = tmp_vptr->tx;

		tmp_vptr->rx = rx;
		tmp_vptr->tx = tx;

		dev->mtu = new_mtu;

		FUNC13(vptr, VELOCITY_INIT_COLD);

		FUNC12(vptr);

		FUNC4(&vptr->napi);

		FUNC2(vptr->mac_regs);
		FUNC7(dev);

		FUNC10(&vptr->lock, flags);

		FUNC11(tmp_vptr);

out_free_tmp_vptr_1:
		FUNC0(tmp_vptr);
	}
out_0:
	return ret;
}