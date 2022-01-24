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
struct hns_mac_cb {TYPE_1__* dsaf_dev; } ;
struct hnae_handle {int dummy; } ;
struct TYPE_2__ {int dsaf_ver; } ;

/* Variables and functions */
#define  AE_VERSION_1 129 
#define  AE_VERSION_2 128 
 int /*<<< orphan*/  MAC_COMM_MODE_RX ; 
 int /*<<< orphan*/  FUNC0 (struct hnae_handle*) ; 
 struct hns_mac_cb* FUNC1 (struct hnae_handle*) ; 
 int /*<<< orphan*/  FUNC2 (struct hns_mac_cb*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hns_mac_cb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hns_mac_cb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct hnae_handle *handle, int speed,
			       int duplex)
{
	struct hns_mac_cb *mac_cb = FUNC1(handle);

	switch (mac_cb->dsaf_dev->dsaf_ver) {
	case AE_VERSION_1:
		FUNC2(mac_cb, speed, duplex);
		break;

	case AE_VERSION_2:
		/* chip need to clear all pkt inside */
		FUNC3(mac_cb, MAC_COMM_MODE_RX);
		if (FUNC0(handle)) {
			FUNC4(mac_cb, MAC_COMM_MODE_RX);
			break;
		}

		FUNC2(mac_cb, speed, duplex);
		FUNC4(mac_cb, MAC_COMM_MODE_RX);
		break;

	default:
		break;
	}

	return;
}