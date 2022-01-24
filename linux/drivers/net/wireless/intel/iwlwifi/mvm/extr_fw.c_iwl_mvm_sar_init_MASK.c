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
struct iwl_mvm {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,int) ; 
 int FUNC1 (struct iwl_mvm*) ; 
 int FUNC2 (struct iwl_mvm*) ; 
 int FUNC3 (struct iwl_mvm*,int,int) ; 

__attribute__((used)) static int FUNC4(struct iwl_mvm *mvm)
{
	int ret;

	ret = FUNC2(mvm);
	if (ret < 0) {
		FUNC0(mvm,
				"WRDS SAR BIOS table invalid or unavailable. (%d)\n",
				ret);
		/*
		 * If not available, don't fail and don't bother with EWRD.
		 * Return 1 to tell that we can't use WGDS either.
		 */
		return 1;
	}

	ret = FUNC1(mvm);
	/* if EWRD is not available, we can still use WRDS, so don't fail */
	if (ret < 0)
		FUNC0(mvm,
				"EWRD SAR BIOS table invalid or unavailable. (%d)\n",
				ret);

	/* choose profile 1 (WRDS) as default for both chains */
	ret = FUNC3(mvm, 1, 1);

	/*
	 * If we don't have profile 0 from BIOS, just skip it.  This
	 * means that SAR Geo will not be enabled either, even if we
	 * have other valid profiles.
	 */
	if (ret == -ENOENT)
		return 1;

	return ret;
}