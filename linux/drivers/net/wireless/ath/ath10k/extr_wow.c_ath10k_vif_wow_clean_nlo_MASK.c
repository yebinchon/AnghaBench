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
struct wmi_pno_scan_req {int /*<<< orphan*/  enable; } ;
struct ath10k_vif {int vdev_type; int /*<<< orphan*/  vdev_id; struct ath10k* ar; } ;
struct ath10k {int nlo_enabled; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  WMI_VDEV_TYPE_STA 128 
 int FUNC0 (struct ath10k*,int /*<<< orphan*/ ,struct wmi_pno_scan_req*) ; 
 int /*<<< orphan*/  FUNC1 (struct wmi_pno_scan_req*) ; 
 struct wmi_pno_scan_req* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ath10k_vif *arvif)
{
	int ret = 0;
	struct ath10k *ar = arvif->ar;

	switch (arvif->vdev_type) {
	case WMI_VDEV_TYPE_STA:
		if (ar->nlo_enabled) {
			struct wmi_pno_scan_req *pno;

			pno = FUNC2(sizeof(*pno), GFP_KERNEL);
			if (!pno)
				return -ENOMEM;

			pno->enable = 0;
			ar->nlo_enabled = false;
			ret = FUNC0(ar, arvif->vdev_id, pno);
			FUNC1(pno);
		}
		break;
	default:
		break;
	}
	return ret;
}