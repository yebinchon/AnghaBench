#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct ifreq {int /*<<< orphan*/  ifr_ifru; } ;
struct TYPE_5__ {int phy; } ;
typedef  TYPE_1__ pegasus_t ;
typedef  int __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
#define  SIOCDEVPRIVATE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int,int*) ; 

__attribute__((used)) static int FUNC4(struct net_device *net, struct ifreq *rq, int cmd)
{
	__u16 *data = (__u16 *) &rq->ifr_ifru;
	pegasus_t *pegasus = FUNC1(net);
	int res;

	switch (cmd) {
	case SIOCDEVPRIVATE:
		data[0] = pegasus->phy;
		/* fall through */
	case SIOCDEVPRIVATE + 1:
		FUNC2(pegasus, data[0], data[1] & 0x1f, &data[3]);
		res = 0;
		break;
	case SIOCDEVPRIVATE + 2:
		if (!FUNC0(CAP_NET_ADMIN))
			return -EPERM;
		FUNC3(pegasus, pegasus->phy, data[1] & 0x1f, &data[2]);
		res = 0;
		break;
	default:
		res = -EOPNOTSUPP;
	}
	return res;
}