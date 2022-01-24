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
struct TYPE_2__ {scalar_t__ sa_family; int /*<<< orphan*/  sa_data; } ;
union iwreq_data {TYPE_1__ ap_addr; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw_priv {int /*<<< orphan*/  mutex; int /*<<< orphan*/  bssid; int /*<<< orphan*/  config; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_ETHER ; 
 int /*<<< orphan*/  CFG_STATIC_BSSID ; 
 int EINVAL ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct ipw_priv*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 struct ipw_priv* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev,
			  struct iw_request_info *info,
			  union iwreq_data *wrqu, char *extra)
{
	struct ipw_priv *priv = FUNC7(dev);

	if (wrqu->ap_addr.sa_family != ARPHRD_ETHER)
		return -EINVAL;
	FUNC9(&priv->mutex);
	if (FUNC5(wrqu->ap_addr.sa_data) ||
	    FUNC6(wrqu->ap_addr.sa_data)) {
		/* we disable mandatory BSSID association */
		FUNC1("Setting AP BSSID to ANY\n");
		priv->config &= ~CFG_STATIC_BSSID;
		FUNC0("Attempting to associate with new "
				"parameters.\n");
		FUNC3(priv);
		FUNC10(&priv->mutex);
		return 0;
	}

	priv->config |= CFG_STATIC_BSSID;
	if (FUNC2(priv->bssid, wrqu->ap_addr.sa_data)) {
		FUNC1("BSSID set to current BSSID.\n");
		FUNC10(&priv->mutex);
		return 0;
	}

	FUNC1("Setting mandatory BSSID to %pM\n",
		     wrqu->ap_addr.sa_data);

	FUNC8(priv->bssid, wrqu->ap_addr.sa_data, ETH_ALEN);

	/* Network configuration changed -- force [re]association */
	FUNC0("[re]association triggered due to BSSID change.\n");
	if (!FUNC4(priv))
		FUNC3(priv);

	FUNC10(&priv->mutex);
	return 0;
}