#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_device {int flags; int /*<<< orphan*/  type; } ;
struct TYPE_4__ {int type; } ;
struct ifreq {TYPE_1__ ifr_settings; } ;
struct TYPE_5__ {int (* attach ) (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/ * proto; } ;
typedef  TYPE_2__ hdlc_device ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_X25 ; 
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  ENCODING_NRZ ; 
 int EPERM ; 
 int IFF_UP ; 
#define  IF_GET_PROTO 129 
#define  IF_PROTO_X25 128 
 int /*<<< orphan*/  NETDEV_POST_TYPE_CHANGE ; 
 int /*<<< orphan*/  PARITY_CRC16_PR1_CCITT ; 
 int FUNC0 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  proto ; 
 int FUNC5 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, struct ifreq *ifr)
{
	hdlc_device *hdlc = FUNC3(dev);
	int result;

	switch (ifr->ifr_settings.type) {
	case IF_GET_PROTO:
		if (FUNC3(dev)->proto != &proto)
			return -EINVAL;
		ifr->ifr_settings.type = IF_PROTO_X25;
		return 0; /* return protocol only, no settable parameters */

	case IF_PROTO_X25:
		if (!FUNC2(CAP_NET_ADMIN))
			return -EPERM;

		if (dev->flags & IFF_UP)
			return -EBUSY;

		result=hdlc->attach(dev, ENCODING_NRZ,PARITY_CRC16_PR1_CCITT);
		if (result)
			return result;

		if ((result = FUNC0(dev, &proto, 0)))
			return result;
		dev->type = ARPHRD_X25;
		FUNC1(NETDEV_POST_TYPE_CHANGE, dev);
		FUNC4(dev);
		return 0;
	}

	return -EINVAL;
}