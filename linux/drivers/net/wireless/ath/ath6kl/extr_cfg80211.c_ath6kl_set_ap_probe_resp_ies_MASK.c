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
struct ath6kl {int /*<<< orphan*/  wmi; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  WMI_FRAME_PROBE_RESP ; 
 int /*<<< orphan*/  FUNC0 (int const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int* FUNC3 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int const*,int const) ; 

__attribute__((used)) static int FUNC5(struct ath6kl_vif *vif,
					const u8 *ies, size_t ies_len)
{
	struct ath6kl *ar = vif->ar;
	const u8 *pos;
	u8 *buf = NULL;
	size_t len = 0;
	int ret;

	/*
	 * Filter out P2P IE(s) since they will be included depending on
	 * the Probe Request frame in ath6kl_send_go_probe_resp().
	 */

	if (ies && ies_len) {
		buf = FUNC3(ies_len, GFP_KERNEL);
		if (buf == NULL)
			return -ENOMEM;
		pos = ies;
		while (pos + 1 < ies + ies_len) {
			if (pos + 2 + pos[1] > ies + ies_len)
				break;
			if (!FUNC0(pos)) {
				FUNC4(buf + len, pos, 2 + pos[1]);
				len += 2 + pos[1];
			}
			pos += 2 + pos[1];
		}
	}

	ret = FUNC1(ar->wmi, vif->fw_vif_idx,
				       WMI_FRAME_PROBE_RESP, buf, len);
	FUNC2(buf);
	return ret;
}