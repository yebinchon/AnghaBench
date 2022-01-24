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
typedef  union iwreq_data {int dummy; } iwreq_data ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_mlme {int cmd; } ;
struct ipw2100_priv {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  IW_MLME_DEAUTH 129 
#define  IW_MLME_DISASSOC 128 
 int /*<<< orphan*/  FUNC0 (struct ipw2100_priv*) ; 
 struct ipw2100_priv* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev,
			       struct iw_request_info *info,
			       union iwreq_data *wrqu, char *extra)
{
	struct ipw2100_priv *priv = FUNC1(dev);
	struct iw_mlme *mlme = (struct iw_mlme *)extra;

	switch (mlme->cmd) {
	case IW_MLME_DEAUTH:
		// silently ignore
		break;

	case IW_MLME_DISASSOC:
		FUNC0(priv);
		break;

	default:
		return -EOPNOTSUPP;
	}
	return 0;
}