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
struct pvc_device {int dummy; } ;
struct net_device {int min_mtu; int needs_free_netdev; struct pvc_device* ml_priv; int /*<<< orphan*/  priv_flags; void* max_mtu; void* mtu; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  broadcast; scalar_t__ dev_addr; } ;
typedef  int /*<<< orphan*/  hdlc_device ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {int dce_changed; int /*<<< orphan*/  dce_pvc_count; } ;

/* Variables and functions */
 int ARPHRD_ETHER ; 
 int EEXIST ; 
 int EIO ; 
 int ENOBUFS ; 
 void* HDLC_MAX_MTU ; 
 int /*<<< orphan*/  IFF_NO_QUEUE ; 
 int /*<<< orphan*/  IFF_TX_SKB_SHARING ; 
 int /*<<< orphan*/  NET_NAME_UNKNOWN ; 
 struct pvc_device* FUNC0 (struct net_device*,unsigned int) ; 
 struct net_device* FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  ether_setup ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 struct net_device** FUNC7 (struct pvc_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,char*) ; 
 int FUNC10 (struct pvc_device*) ; 
 int /*<<< orphan*/  pvc_ops ; 
 int /*<<< orphan*/  pvc_setup ; 
 scalar_t__ FUNC11 (struct net_device*) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct net_device *frad, unsigned int dlci, int type)
{
	hdlc_device *hdlc = FUNC3(frad);
	struct pvc_device *pvc;
	struct net_device *dev;
	int used;

	if ((pvc = FUNC0(frad, dlci)) == NULL) {
		FUNC9(frad, "Memory squeeze on fr_add_pvc()\n");
		return -ENOBUFS;
	}

	if (*FUNC7(pvc, type))
		return -EEXIST;

	used = FUNC10(pvc);

	if (type == ARPHRD_ETHER)
		dev = FUNC1(0, "pvceth%d", NET_NAME_UNKNOWN,
				   ether_setup);
	else
		dev = FUNC1(0, "pvc%d", NET_NAME_UNKNOWN, pvc_setup);

	if (!dev) {
		FUNC9(frad, "Memory squeeze on fr_pvc()\n");
		FUNC2(hdlc);
		return -ENOBUFS;
	}

	if (type == ARPHRD_ETHER) {
		dev->priv_flags &= ~IFF_TX_SKB_SHARING;
		FUNC5(dev);
	} else {
		*(__be16*)dev->dev_addr = FUNC8(dlci);
		FUNC4(dev->broadcast, dlci);
	}
	dev->netdev_ops = &pvc_ops;
	dev->mtu = HDLC_MAX_MTU;
	dev->min_mtu = 68;
	dev->max_mtu = HDLC_MAX_MTU;
	dev->priv_flags |= IFF_NO_QUEUE;
	dev->ml_priv = pvc;

	if (FUNC11(dev) != 0) {
		FUNC6(dev);
		FUNC2(hdlc);
		return -EIO;
	}

	dev->needs_free_netdev = true;
	*FUNC7(pvc, type) = dev;
	if (!used) {
		FUNC12(hdlc)->dce_changed = 1;
		FUNC12(hdlc)->dce_pvc_count++;
	}
	return 0;
}