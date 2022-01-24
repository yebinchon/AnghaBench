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
struct net_device {int dummy; } ;
struct ifreq {int /*<<< orphan*/  ifr_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
#define  EQL_EMANCIPATE 133 
#define  EQL_ENSLAVE 132 
#define  EQL_GETMASTRCFG 131 
#define  EQL_GETSLAVECFG 130 
#define  EQL_SETMASTRCFG 129 
#define  EQL_SETSLAVECFG 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev, struct ifreq *ifr, int cmd)
{
	if (cmd != EQL_GETMASTRCFG && cmd != EQL_GETSLAVECFG &&
	    !FUNC0(CAP_NET_ADMIN))
	  	return -EPERM;

	switch (cmd) {
		case EQL_ENSLAVE:
			return FUNC2(dev, ifr->ifr_data);
		case EQL_EMANCIPATE:
			return FUNC1(dev, ifr->ifr_data);
		case EQL_GETSLAVECFG:
			return FUNC4(dev, ifr->ifr_data);
		case EQL_SETSLAVECFG:
			return FUNC6(dev, ifr->ifr_data);
		case EQL_GETMASTRCFG:
			return FUNC3(dev, ifr->ifr_data);
		case EQL_SETMASTRCFG:
			return FUNC5(dev, ifr->ifr_data);
		default:
			return -EOPNOTSUPP;
	}
}