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
struct TYPE_2__ {int length; } ;
union iwreq_data {TYPE_1__ data; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw_priv {int power_mode; } ;

/* Variables and functions */
#define  IPW_POWER_AC 129 
#define  IPW_POWER_BATTERY 128 
 int IPW_POWER_ENABLED ; 
 int FUNC0 (int) ; 
 scalar_t__ MAX_WX_STRING ; 
 struct ipw_priv* FUNC1 (struct net_device*) ; 
 int* period_duration ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,char*,...) ; 
 int* timeout_duration ; 

__attribute__((used)) static int FUNC3(struct net_device *dev,
				struct iw_request_info *info,
				union iwreq_data *wrqu, char *extra)
{
	struct ipw_priv *priv = FUNC1(dev);
	int level = FUNC0(priv->power_mode);
	char *p = extra;

	p += FUNC2(p, MAX_WX_STRING, "Power save level: %d ", level);

	switch (level) {
	case IPW_POWER_AC:
		p += FUNC2(p, MAX_WX_STRING - (p - extra), "(AC)");
		break;
	case IPW_POWER_BATTERY:
		p += FUNC2(p, MAX_WX_STRING - (p - extra), "(BATTERY)");
		break;
	default:
		p += FUNC2(p, MAX_WX_STRING - (p - extra),
			      "(Timeout %dms, Period %dms)",
			      timeout_duration[level - 1] / 1000,
			      period_duration[level - 1] / 1000);
	}

	if (!(priv->power_mode & IPW_POWER_ENABLED))
		p += FUNC2(p, MAX_WX_STRING - (p - extra), " OFF");

	wrqu->data.length = p - extra + 1;

	return 0;
}