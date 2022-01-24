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
typedef  int /*<<< orphan*/  u32 ;
struct hns_mac_cb {int /*<<< orphan*/  mac_id; struct dsaf_device* dsaf_dev; } ;
struct hnae_handle {scalar_t__ port_type; } ;
struct dsaf_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ HNAE_PORT_SERVICE ; 
 int /*<<< orphan*/  FUNC0 (struct dsaf_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct hns_mac_cb* FUNC1 (struct hnae_handle*) ; 
 int /*<<< orphan*/  FUNC2 (struct hns_mac_cb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hns_mac_cb*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct hnae_handle *handle,
				  u32 *auto_neg, u32 *rx_en, u32 *tx_en)
{
	struct hns_mac_cb *mac_cb = FUNC1(handle);
	struct dsaf_device *dsaf_dev = mac_cb->dsaf_dev;

	FUNC2(mac_cb, auto_neg);

	FUNC3(mac_cb, rx_en, tx_en);

	/* Service port's pause feature is provided by DSAF, not mac */
	if (handle->port_type == HNAE_PORT_SERVICE)
		FUNC0(dsaf_dev, mac_cb->mac_id, rx_en);
}