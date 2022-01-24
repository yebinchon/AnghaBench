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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct hns_ppe_cb {int dummy; } ;
struct hns_mac_cb {scalar_t__ mac_type; } ;
struct hnae_vf_cb {int port_index; } ;
struct hnae_handle {int q_num; int /*<<< orphan*/  dev; } ;
struct dsaf_device {int dummy; } ;

/* Variables and functions */
 int ETH_GSTRING_LEN ; 
 scalar_t__ HNAE_PORT_SERVICE ; 
 int /*<<< orphan*/  FUNC0 (struct hnae_handle*) ; 
 struct dsaf_device* FUNC1 (int /*<<< orphan*/ ) ; 
 struct hnae_vf_cb* FUNC2 (struct hnae_handle*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,struct dsaf_device*) ; 
 struct hns_mac_cb* FUNC4 (struct hnae_handle*) ; 
 struct hns_ppe_cb* FUNC5 (struct hnae_handle*) ; 
 int FUNC6 (struct hns_mac_cb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hns_mac_cb*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct hns_ppe_cb*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC12(struct hnae_handle *handle,
			       u32 stringset, u8 *data)
{
	int port;
	int idx;
	struct hns_mac_cb *mac_cb;
	struct hns_ppe_cb *ppe_cb;
	struct dsaf_device *dsaf_dev = FUNC1(handle->dev);
	u8 *p = data;
	struct	hnae_vf_cb *vf_cb;

	FUNC0(handle);

	vf_cb = FUNC2(handle);
	port = vf_cb->port_index;
	mac_cb = FUNC4(handle);
	ppe_cb = FUNC5(handle);

	for (idx = 0; idx < handle->q_num; idx++) {
		FUNC11(stringset, p, idx);
		p += ETH_GSTRING_LEN * FUNC10(stringset);
	}

	FUNC9(ppe_cb, stringset, p);
	p += ETH_GSTRING_LEN * FUNC8(stringset);

	FUNC7(mac_cb, stringset, p);
	p += ETH_GSTRING_LEN * FUNC6(mac_cb, stringset);

	if (mac_cb->mac_type == HNAE_PORT_SERVICE)
		FUNC3(stringset, p, port, dsaf_dev);
}