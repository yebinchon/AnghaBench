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
struct mac80211_hwsim_data {int /*<<< orphan*/  hw; int /*<<< orphan*/  dev; int /*<<< orphan*/  debugfs; int /*<<< orphan*/  idx; } ;
struct genl_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,struct genl_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct mac80211_hwsim_data *data,
				     const char *hwname,
				     struct genl_info *info)
{
	FUNC3(data->idx, hwname, info);
	FUNC0(data->debugfs);
	FUNC5(data->hw);
	FUNC1(data->dev);
	FUNC2(data->dev);
	FUNC4(data->hw);
}