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
struct sta_info {int flags; TYPE_1__* local; int /*<<< orphan*/  ap; int /*<<< orphan*/  list; } ;
struct prism2_hostapd_param {int /*<<< orphan*/  sta_addr; } ;
struct ap_data {int /*<<< orphan*/  sta_table_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOENT ; 
 int WLAN_STA_ASSOC ; 
 int /*<<< orphan*/  FUNC0 (struct ap_data*,struct sta_info*) ; 
 struct sta_info* FUNC1 (struct ap_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ap_data*,struct sta_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct sta_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct ap_data *ap,
				     struct prism2_hostapd_param *param)
{
	struct sta_info *sta;

	FUNC5(&ap->sta_table_lock);
	sta = FUNC1(ap, param->sta_addr);
	if (sta) {
		FUNC2(ap, sta);
		FUNC4(&sta->list);
	}
	FUNC6(&ap->sta_table_lock);

	if (!sta)
		return -ENOENT;

	if ((sta->flags & WLAN_STA_ASSOC) && !sta->ap && sta->local)
		FUNC3(sta->local->dev, sta);
	FUNC0(ap, sta);

	return 0;
}