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
typedef  union iwreq_data {int dummy; } iwreq_data ;
struct orinoco_private {int dummy; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sa_data; } ;
struct iw_mlme {int cmd; int /*<<< orphan*/  reason_code; TYPE_1__ addr; } ;

/* Variables and functions */
 int EBUSY ; 
 int EOPNOTSUPP ; 
#define  IW_MLME_DEAUTH 129 
#define  IW_MLME_DISASSOC 128 
 struct orinoco_private* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct orinoco_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct orinoco_private*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (struct orinoco_private*,unsigned long*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
				  struct iw_request_info *info,
				  union iwreq_data *wrqu, char *extra)
{
	struct orinoco_private *priv = FUNC0(dev);
	struct iw_mlme *mlme = (struct iw_mlme *)extra;
	unsigned long flags;
	int ret = 0;

	if (FUNC2(priv, &flags) != 0)
		return -EBUSY;

	switch (mlme->cmd) {
	case IW_MLME_DEAUTH:
		/* silently ignore */
		break;

	case IW_MLME_DISASSOC:

		ret = FUNC1(priv, mlme->addr.sa_data,
					      mlme->reason_code);
		break;

	default:
		ret = -EOPNOTSUPP;
	}

	FUNC3(priv, &flags);
	return ret;
}