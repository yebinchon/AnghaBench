#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wmi_p2p_noa_info {int changed; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  noa_len; scalar_t__ noa_data; } ;
struct TYPE_5__ {TYPE_1__ ap; } ;
struct ath10k_vif {TYPE_2__ u; TYPE_3__* vif; } ;
struct ath10k {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  p2p; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_MGMT ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int WMI_P2P_NOA_CHANGED_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k_vif*,struct wmi_p2p_noa_info const*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ath10k *ar, struct ath10k_vif *arvif,
				  struct sk_buff *bcn,
				  const struct wmi_p2p_noa_info *noa)
{
	if (!arvif->vif->p2p)
		return;

	FUNC0(ar, ATH10K_DBG_MGMT, "noa changed: %d\n", noa->changed);

	if (noa->changed & WMI_P2P_NOA_CHANGED_BIT)
		FUNC1(arvif, noa);

	if (arvif->u.ap.noa_data)
		if (!FUNC2(bcn, 0, arvif->u.ap.noa_len, GFP_ATOMIC))
			FUNC3(bcn, arvif->u.ap.noa_data,
				     arvif->u.ap.noa_len);
}