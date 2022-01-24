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
typedef  int u32 ;
struct iwl_ucode_capabilities {int /*<<< orphan*/  _api; } ;
struct iwl_ucode_api {int /*<<< orphan*/  api_flags; int /*<<< orphan*/  api_index; } ;
struct iwl_drv {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_drv*,char*,int) ; 
 int /*<<< orphan*/  NUM_IWL_UCODE_TLV_API ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct iwl_drv *drv, const u8 *data,
				    struct iwl_ucode_capabilities *capa)
{
	const struct iwl_ucode_api *ucode_api = (void *)data;
	u32 api_index = FUNC4(ucode_api->api_index);
	u32 api_flags = FUNC4(ucode_api->api_flags);
	int i;

	if (api_index >= FUNC1(NUM_IWL_UCODE_TLV_API, 32)) {
		FUNC2(drv,
			 "api flags index %d larger than supported by driver\n",
			 api_index);
		return;
	}

	for (i = 0; i < 32; i++) {
		if (api_flags & FUNC0(i))
			FUNC3(i + 32 * api_index, capa->_api);
	}
}