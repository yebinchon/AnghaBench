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
typedef  int u32 ;
struct ipw_priv {int dummy; } ;
typedef  int /*<<< orphan*/  param ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  IPW_CMD_POWER_MODE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  IPW_POWER_AC 129 
#define  IPW_POWER_BATTERY 128 
 int IPW_POWER_INDEX_3 ; 
 int IPW_POWER_MODE_CAM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct ipw_priv*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct ipw_priv *priv, u32 mode)
{
	__le32 param;

	if (!priv) {
		FUNC0("Invalid args\n");
		return -1;
	}

	/* If on battery, set to 3, if AC set to CAM, else user
	 * level */
	switch (mode) {
	case IPW_POWER_BATTERY:
		param = FUNC1(IPW_POWER_INDEX_3);
		break;
	case IPW_POWER_AC:
		param = FUNC1(IPW_POWER_MODE_CAM);
		break;
	default:
		param = FUNC1(mode);
		break;
	}

	return FUNC2(priv, IPW_CMD_POWER_MODE, sizeof(param),
				&param);
}