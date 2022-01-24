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
struct TYPE_2__ {int /*<<< orphan*/  beacon_interval; } ;
struct ipw_priv {scalar_t__ disassociate_threshold; int config; TYPE_1__ assoc_request; int /*<<< orphan*/  adhoc_check; int /*<<< orphan*/  missed_adhoc_beacons; } ;

/* Variables and functions */
 int CFG_ADHOC_PERSIST ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int IPW_DL_ASSOC ; 
 int IPW_DL_INFO ; 
 int IPW_DL_NOTIF ; 
 int IPW_DL_STATE ; 
 int /*<<< orphan*/  FUNC1 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void *data)
{
	struct ipw_priv *priv = data;

	if (priv->missed_adhoc_beacons++ > priv->disassociate_threshold &&
	    !(priv->config & CFG_ADHOC_PERSIST)) {
		FUNC0(IPW_DL_INFO | IPW_DL_NOTIF |
			  IPW_DL_STATE | IPW_DL_ASSOC,
			  "Missed beacon: %d - disassociate\n",
			  priv->missed_adhoc_beacons);
		FUNC2(priv);
		FUNC1(priv);
		return;
	}

	FUNC4(&priv->adhoc_check,
			      FUNC3(priv->assoc_request.beacon_interval));
}