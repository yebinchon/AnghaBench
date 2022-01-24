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
typedef  int /*<<< orphan*/  u8 ;
struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct vif_params {int dummy; } ;
struct ath6kl {scalar_t__ num_vif; scalar_t__ vif_max; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct wireless_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct wireless_dev* FUNC2 (struct ath6kl*,char const*,unsigned char,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath6kl*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ath6kl* FUNC4 (struct wiphy*) ; 

__attribute__((used)) static struct wireless_dev *FUNC5(struct wiphy *wiphy,
						      const char *name,
						      unsigned char name_assign_type,
						      enum nl80211_iftype type,
						      struct vif_params *params)
{
	struct ath6kl *ar = FUNC4(wiphy);
	struct wireless_dev *wdev;
	u8 if_idx, nw_type;

	if (ar->num_vif == ar->vif_max) {
		FUNC1("Reached maximum number of supported vif\n");
		return FUNC0(-EINVAL);
	}

	if (!FUNC3(ar, type, &if_idx, &nw_type)) {
		FUNC1("Not a supported interface type\n");
		return FUNC0(-EINVAL);
	}

	wdev = FUNC2(ar, name, name_assign_type, type, if_idx, nw_type);
	if (!wdev)
		return FUNC0(-ENOMEM);

	ar->num_vif++;

	return wdev;
}