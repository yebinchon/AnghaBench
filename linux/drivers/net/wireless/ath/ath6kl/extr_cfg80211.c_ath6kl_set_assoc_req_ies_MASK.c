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
typedef  int u8 ;
struct ath6kl_vif {int /*<<< orphan*/  fw_vif_idx; struct ath6kl* ar; } ;
struct ath6kl {int /*<<< orphan*/  wmi; int /*<<< orphan*/  connect_ctrl_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONNECT_WPS_FLAG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  WMI_FRAME_ASSOC_REQ ; 
 scalar_t__ FUNC0 (int const*) ; 
 scalar_t__ FUNC1 (int const*) ; 
 scalar_t__ FUNC2 (int const*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int* FUNC5 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int*,int const*,int const) ; 

__attribute__((used)) static int FUNC7(struct ath6kl_vif *vif, const u8 *ies,
				    size_t ies_len)
{
	struct ath6kl *ar = vif->ar;
	const u8 *pos;
	u8 *buf = NULL;
	size_t len = 0;
	int ret;

	/*
	 * Clear previously set flag
	 */

	ar->connect_ctrl_flags &= ~CONNECT_WPS_FLAG;

	/*
	 * Filter out RSN/WPA IE(s)
	 */

	if (ies && ies_len) {
		buf = FUNC5(ies_len, GFP_KERNEL);
		if (buf == NULL)
			return -ENOMEM;
		pos = ies;

		while (pos + 1 < ies + ies_len) {
			if (pos + 2 + pos[1] > ies + ies_len)
				break;
			if (!(FUNC1(pos) || FUNC0(pos))) {
				FUNC6(buf + len, pos, 2 + pos[1]);
				len += 2 + pos[1];
			}

			if (FUNC2(pos))
				ar->connect_ctrl_flags |= CONNECT_WPS_FLAG;

			pos += 2 + pos[1];
		}
	}

	ret = FUNC3(ar->wmi, vif->fw_vif_idx,
				       WMI_FRAME_ASSOC_REQ, buf, len);
	FUNC4(buf);
	return ret;
}