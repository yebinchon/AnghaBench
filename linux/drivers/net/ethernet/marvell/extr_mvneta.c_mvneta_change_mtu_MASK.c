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
struct net_device {int mtu; } ;
struct mvneta_port {int /*<<< orphan*/  pkt_size; scalar_t__ bm_priv; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct mvneta_port*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mvneta_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct mvneta_port*) ; 
 int /*<<< orphan*/  mvneta_percpu_disable ; 
 int /*<<< orphan*/  mvneta_percpu_enable ; 
 int FUNC6 (struct mvneta_port*) ; 
 int FUNC7 (struct mvneta_port*) ; 
 int /*<<< orphan*/  FUNC8 (struct mvneta_port*) ; 
 int /*<<< orphan*/  FUNC9 (struct mvneta_port*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,char*,int,int) ; 
 struct mvneta_port* FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct mvneta_port*,int) ; 

__attribute__((used)) static int FUNC16(struct net_device *dev, int mtu)
{
	struct mvneta_port *pp = FUNC12(dev);
	int ret;

	if (!FUNC1(FUNC2(mtu), 8)) {
		FUNC11(dev, "Illegal MTU value %d, rounding to %d\n",
			    mtu, FUNC0(FUNC2(mtu), 8));
		mtu = FUNC0(FUNC2(mtu), 8);
	}

	dev->mtu = mtu;

	if (!FUNC14(dev)) {
		if (pp->bm_priv)
			FUNC3(pp, mtu);

		FUNC13(dev);
		return 0;
	}

	/* The interface is running, so we have to force a
	 * reallocation of the queues
	 */
	FUNC9(pp);
	FUNC15(mvneta_percpu_disable, pp, true);

	FUNC5(pp);
	FUNC4(pp);

	if (pp->bm_priv)
		FUNC3(pp, mtu);

	pp->pkt_size = FUNC2(dev->mtu);

	ret = FUNC6(pp);
	if (ret) {
		FUNC10(dev, "unable to setup rxqs after MTU change\n");
		return ret;
	}

	ret = FUNC7(pp);
	if (ret) {
		FUNC10(dev, "unable to setup txqs after MTU change\n");
		return ret;
	}

	FUNC15(mvneta_percpu_enable, pp, true);
	FUNC8(pp);

	FUNC13(dev);

	return 0;
}