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
typedef  int /*<<< orphan*/  u32 ;
struct ipw2100_priv {int status; int /*<<< orphan*/  wx_event_work; int /*<<< orphan*/  security_work; int /*<<< orphan*/  net_dev; TYPE_1__* ieee; int /*<<< orphan*/  bssid; int /*<<< orphan*/  essid; int /*<<< orphan*/  essid_len; } ;
struct TYPE_2__ {int /*<<< orphan*/  bssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int IPW_DL_ASSOC ; 
 int IPW_DL_NOTIF ; 
 int IPW_DL_STATE ; 
 int STATUS_ASSOCIATED ; 
 int STATUS_ASSOCIATING ; 
 int STATUS_RUNNING ; 
 int STATUS_SECURITY_UPDATED ; 
 int STATUS_STOPPING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ipw2100_priv *priv, u32 status)
{
	FUNC0(IPW_DL_NOTIF | IPW_DL_STATE | IPW_DL_ASSOC,
		  "disassociated: '%*pE' %pM\n", priv->essid_len, priv->essid,
		  priv->bssid);

	priv->status &= ~(STATUS_ASSOCIATED | STATUS_ASSOCIATING);

	if (priv->status & STATUS_STOPPING) {
		FUNC1("Card is stopping itself, discard ASSN_LOST.\n");
		return;
	}

	FUNC2(priv->bssid);
	FUNC2(priv->ieee->bssid);

	FUNC3(priv->net_dev);
	FUNC4(priv->net_dev);

	if (!(priv->status & STATUS_RUNNING))
		return;

	if (priv->status & STATUS_SECURITY_UPDATED)
		FUNC5(&priv->security_work, 0);

	FUNC5(&priv->wx_event_work, 0);
}