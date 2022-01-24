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
struct stmmac_priv {int /*<<< orphan*/  phylink; } ;
struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
#define  SIOCGHWTSTAMP 132 
#define  SIOCGMIIPHY 131 
#define  SIOCGMIIREG 130 
#define  SIOCSHWTSTAMP 129 
#define  SIOCSMIIREG 128 
 struct stmmac_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct ifreq*,int) ; 
 int FUNC3 (struct net_device*,struct ifreq*) ; 
 int FUNC4 (struct net_device*,struct ifreq*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, struct ifreq *rq, int cmd)
{
	struct stmmac_priv *priv = FUNC0 (dev);
	int ret = -EOPNOTSUPP;

	if (!FUNC1(dev))
		return -EINVAL;

	switch (cmd) {
	case SIOCGMIIPHY:
	case SIOCGMIIREG:
	case SIOCSMIIREG:
		ret = FUNC2(priv->phylink, rq, cmd);
		break;
	case SIOCSHWTSTAMP:
		ret = FUNC4(dev, rq);
		break;
	case SIOCGHWTSTAMP:
		ret = FUNC3(dev, rq);
		break;
	default:
		break;
	}

	return ret;
}