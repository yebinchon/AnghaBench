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
struct iwl_mvm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  WLAN_EID_DS_PARAMS ; 
#define  WLAN_EID_EXT_SUPP_RATES 131 
#define  WLAN_EID_REQUEST 130 
#define  WLAN_EID_SSID 129 
#define  WLAN_EID_SUPP_RATES 128 
 size_t FUNC1 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static u8 *FUNC4(struct iwl_mvm *mvm, const u8 *ies,
					   size_t len, u8 *const pos)
{
	static const u8 before_ds_params[] = {
			WLAN_EID_SSID,
			WLAN_EID_SUPP_RATES,
			WLAN_EID_REQUEST,
			WLAN_EID_EXT_SUPP_RATES,
	};
	size_t offs;
	u8 *newpos = pos;

	if (!FUNC2(mvm)) {
		FUNC3(newpos, ies, len);
		return newpos + len;
	}

	offs = FUNC1(ies, len,
				  before_ds_params,
				  FUNC0(before_ds_params),
				  0);

	FUNC3(newpos, ies, offs);
	newpos += offs;

	/* Add a placeholder for DS Parameter Set element */
	*newpos++ = WLAN_EID_DS_PARAMS;
	*newpos++ = 1;
	*newpos++ = 0;

	FUNC3(newpos, ies + offs, len - offs);
	newpos += len - offs;

	return newpos;
}