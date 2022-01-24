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
struct wireless_dev {size_t iftype; } ;
struct wil6210_priv {int /*<<< orphan*/  wiphy; scalar_t__* vifs; } ;
struct iface_combination_params {int num_different_channels; int /*<<< orphan*/ * iftype_num; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;

/* Variables and functions */
 int FUNC0 (struct wil6210_priv*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct iface_combination_params*) ; 
 struct wireless_dev* FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct wil6210_priv *wil,
					   enum nl80211_iftype new_type)
{
	int i;
	struct wireless_dev *wdev;
	struct iface_combination_params params = {
		.num_different_channels = 1,
	};

	for (i = 0; i < FUNC0(wil); i++) {
		if (wil->vifs[i]) {
			wdev = FUNC2(wil->vifs[i]);
			params.iftype_num[wdev->iftype]++;
		}
	}
	params.iftype_num[new_type]++;
	return FUNC1(wil->wiphy, &params);
}