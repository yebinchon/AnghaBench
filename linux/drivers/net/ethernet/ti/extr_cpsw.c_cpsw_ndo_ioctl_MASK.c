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
struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;
struct cpsw_priv {struct cpsw_common* cpsw; } ;
struct cpsw_common {TYPE_1__* slaves; } ;
struct TYPE_2__ {int /*<<< orphan*/  phy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
#define  SIOCGHWTSTAMP 129 
#define  SIOCSHWTSTAMP 128 
 int FUNC0 (struct net_device*,struct ifreq*) ; 
 int FUNC1 (struct net_device*,struct ifreq*) ; 
 int FUNC2 (struct cpsw_common*,struct cpsw_priv*) ; 
 struct cpsw_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct ifreq*,int) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, struct ifreq *req, int cmd)
{
	struct cpsw_priv *priv = FUNC3(dev);
	struct cpsw_common *cpsw = priv->cpsw;
	int slave_no = FUNC2(cpsw, priv);

	if (!FUNC4(dev))
		return -EINVAL;

	switch (cmd) {
	case SIOCSHWTSTAMP:
		return FUNC1(dev, req);
	case SIOCGHWTSTAMP:
		return FUNC0(dev, req);
	}

	if (!cpsw->slaves[slave_no].phy)
		return -EOPNOTSUPP;
	return FUNC5(cpsw->slaves[slave_no].phy, req, cmd);
}