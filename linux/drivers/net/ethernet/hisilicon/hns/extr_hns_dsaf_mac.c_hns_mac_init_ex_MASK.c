#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mac_params {int /*<<< orphan*/  mac_mode; } ;
struct mac_driver {int /*<<< orphan*/  (* mac_free ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_2__ {int /*<<< orphan*/ * mac; } ;
struct hns_mac_cb {TYPE_1__ priv; int /*<<< orphan*/  mac_id; int /*<<< orphan*/  half_duplex; int /*<<< orphan*/  speed; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ MAC_SPEED_10000 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hns_mac_cb*) ; 
 scalar_t__ FUNC2 (struct hns_mac_cb*,struct mac_params*) ; 
 int /*<<< orphan*/  FUNC3 (struct hns_mac_cb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mac_params*,struct hns_mac_cb*) ; 
 int FUNC5 (struct hns_mac_cb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct hns_mac_cb*) ; 
 scalar_t__ FUNC7 (struct hns_mac_cb*,struct mac_params*) ; 
 int /*<<< orphan*/  FUNC8 (struct mac_params*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct hns_mac_cb *mac_cb)
{
	int ret;
	struct mac_params param;
	struct mac_driver *drv;

	FUNC1(mac_cb);

	FUNC8(&param, 0, sizeof(struct mac_params));
	FUNC4(&param, mac_cb);

	if (FUNC0(param.mac_mode) < MAC_SPEED_10000)
		drv = (struct mac_driver *)FUNC2(mac_cb, &param);
	else
		drv = (struct mac_driver *)FUNC7(mac_cb, &param);

	if (!drv)
		return -ENOMEM;

	mac_cb->priv.mac = (void *)drv;
	FUNC6(mac_cb);

	FUNC3(mac_cb, mac_cb->speed, !mac_cb->half_duplex);

	ret = FUNC5(mac_cb, mac_cb->mac_id, 0, true);
	if (ret)
		goto free_mac_drv;

	return 0;

free_mac_drv:
	drv->mac_free(mac_cb->priv.mac);
	mac_cb->priv.mac = NULL;

	return ret;
}