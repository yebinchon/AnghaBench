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
struct TYPE_2__ {int flags; int /*<<< orphan*/  length; } ;
union iwreq_data {TYPE_1__ essid; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw_priv {int config; int status; int /*<<< orphan*/  mutex; int /*<<< orphan*/  essid_len; int /*<<< orphan*/  essid; } ;

/* Variables and functions */
 int CFG_STATIC_ESSID ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int STATUS_ASSOCIATED ; 
 int STATUS_ASSOCIATING ; 
 struct ipw_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
			    struct iw_request_info *info,
			    union iwreq_data *wrqu, char *extra)
{
	struct ipw_priv *priv = FUNC1(dev);

	/* If we are associated, trying to associate, or have a statically
	 * configured ESSID then return that; otherwise return ANY */
	FUNC3(&priv->mutex);
	if (priv->config & CFG_STATIC_ESSID ||
	    priv->status & (STATUS_ASSOCIATED | STATUS_ASSOCIATING)) {
		FUNC0("Getting essid: '%*pE'\n",
			     priv->essid_len, priv->essid);
		FUNC2(extra, priv->essid, priv->essid_len);
		wrqu->essid.length = priv->essid_len;
		wrqu->essid.flags = 1;	/* active */
	} else {
		FUNC0("Getting essid: ANY\n");
		wrqu->essid.length = 0;
		wrqu->essid.flags = 0;	/* active */
	}
	FUNC4(&priv->mutex);
	return 0;
}