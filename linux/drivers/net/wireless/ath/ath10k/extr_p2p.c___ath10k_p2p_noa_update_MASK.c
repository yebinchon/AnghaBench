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
struct wmi_p2p_noa_info {int dummy; } ;
struct ath10k_vif {struct ath10k* ar; } ;
struct ath10k {int /*<<< orphan*/  data_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k_vif*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (void*,size_t,struct wmi_p2p_noa_info const*) ; 
 size_t FUNC2 (struct wmi_p2p_noa_info const*) ; 
 void* FUNC3 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ath10k_vif *arvif,
				    const struct wmi_p2p_noa_info *noa)
{
	struct ath10k *ar = arvif->ar;
	void *ie;
	size_t len;

	FUNC4(&ar->data_lock);

	FUNC0(arvif, NULL, 0);

	len = FUNC2(noa);
	if (!len)
		return;

	ie = FUNC3(len, GFP_ATOMIC);
	if (!ie)
		return;

	FUNC1(ie, len, noa);
	FUNC0(arvif, ie, len);
}