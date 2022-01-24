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
typedef  int u8 ;
struct TYPE_3__ {int* variable; } ;
struct TYPE_4__ {TYPE_1__ probe_resp; } ;
struct ieee80211_mgmt {int /*<<< orphan*/  da; TYPE_2__ u; } ;
struct ath6kl_vif {int /*<<< orphan*/  fw_vif_idx; struct ath6kl* ar; } ;
struct ath6kl {int /*<<< orphan*/  wmi; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int* FUNC3 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int const*,int const) ; 

__attribute__((used)) static int FUNC5(struct ath6kl_vif *vif,
				     const u8 *buf, size_t len,
				     unsigned int freq)
{
	struct ath6kl *ar = vif->ar;
	const u8 *pos;
	u8 *p2p;
	int p2p_len;
	int ret;
	const struct ieee80211_mgmt *mgmt;

	mgmt = (const struct ieee80211_mgmt *) buf;

	/* Include P2P IE(s) from the frame generated in user space. */

	p2p = FUNC3(len, GFP_KERNEL);
	if (p2p == NULL)
		return -ENOMEM;
	p2p_len = 0;

	pos = mgmt->u.probe_resp.variable;
	while (pos + 1 < buf + len) {
		if (pos + 2 + pos[1] > buf + len)
			break;
		if (FUNC0(pos)) {
			FUNC4(p2p + p2p_len, pos, 2 + pos[1]);
			p2p_len += 2 + pos[1];
		}
		pos += 2 + pos[1];
	}

	ret = FUNC1(ar->wmi, vif->fw_vif_idx, freq,
						 mgmt->da, p2p, p2p_len);
	FUNC2(p2p);
	return ret;
}