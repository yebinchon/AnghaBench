#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sta_info {int last_rx; int /*<<< orphan*/  users; } ;
struct TYPE_3__ {int inactive_sec; } ;
struct TYPE_4__ {TYPE_1__ get_info_sta; } ;
struct prism2_hostapd_param {TYPE_2__ u; int /*<<< orphan*/  sta_addr; } ;
struct ap_data {int /*<<< orphan*/  sta_table_lock; } ;

/* Variables and functions */
 int ENOENT ; 
 int HZ ; 
 struct sta_info* FUNC0 (struct ap_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct ap_data *ap,
				       struct prism2_hostapd_param *param)
{
	struct sta_info *sta;

	FUNC3(&ap->sta_table_lock);
	sta = FUNC0(ap, param->sta_addr);
	if (sta)
		FUNC2(&sta->users);
	FUNC4(&ap->sta_table_lock);

	if (!sta)
		return -ENOENT;

	param->u.get_info_sta.inactive_sec = (jiffies - sta->last_rx) / HZ;

	FUNC1(&sta->users);

	return 1;
}