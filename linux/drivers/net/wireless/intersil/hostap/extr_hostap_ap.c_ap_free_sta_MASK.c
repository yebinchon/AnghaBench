#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct sta_info* challenge; } ;
struct TYPE_8__ {TYPE_3__ sta; } ;
struct sta_info {int aid; int /*<<< orphan*/  timer; TYPE_4__ u; scalar_t__ ap; int /*<<< orphan*/  tx_buf; struct sta_info* crypt; int /*<<< orphan*/  priv; TYPE_2__* ops; int /*<<< orphan*/  addr; TYPE_1__* local; } ;
struct ap_data {int /*<<< orphan*/ ** sta_aid; int /*<<< orphan*/  num_sta; int /*<<< orphan*/ * proc; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* deinit ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sta_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct sta_info*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct ap_data *ap, struct sta_info *sta)
{
	if (sta->ap && sta->local)
		FUNC1(sta->local->dev, sta);

	if (ap->proc != NULL) {
		char name[20];
		FUNC5(name, "%pM", sta->addr);
		FUNC3(name, ap->proc);
	}

	if (sta->crypt) {
		sta->crypt->ops->deinit(sta->crypt->priv);
		FUNC2(sta->crypt);
		sta->crypt = NULL;
	}

	FUNC4(&sta->tx_buf);

	ap->num_sta--;
#ifndef PRISM2_NO_KERNEL_IEEE80211_MGMT
	if (sta->aid > 0)
		ap->sta_aid[sta->aid - 1] = NULL;

	if (!sta->ap)
		FUNC2(sta->u.sta.challenge);
	FUNC0(&sta->timer);
#endif /* PRISM2_NO_KERNEL_IEEE80211_MGMT */

	FUNC2(sta);
}