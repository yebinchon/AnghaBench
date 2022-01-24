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
struct hns_mac_cb {int dummy; } ;
struct hnae_handle {int /*<<< orphan*/  q_num; int /*<<< orphan*/  qs; } ;

/* Variables and functions */
 int /*<<< orphan*/  RCB_INT_FLAG_RX ; 
 int /*<<< orphan*/  RCB_INT_FLAG_TX ; 
 int /*<<< orphan*/  FUNC0 (struct hnae_handle*,int /*<<< orphan*/ ) ; 
 struct hns_mac_cb* FUNC1 (struct hnae_handle*) ; 
 int /*<<< orphan*/  FUNC2 (struct hns_mac_cb*) ; 
 int /*<<< orphan*/  FUNC3 (struct hns_mac_cb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static void FUNC7(struct hnae_handle *handle)
{
	struct hns_mac_cb *mac_cb = FUNC1(handle);

	/* just clean tx fbd, neednot rx fbd*/
	FUNC4(handle->qs, handle->q_num, RCB_INT_FLAG_TX);

	FUNC5(20);

	FUNC2(mac_cb);

	FUNC6(10000, 20000);

	FUNC0(handle, 0);

	/* clean rx fbd. */
	FUNC4(handle->qs, handle->q_num, RCB_INT_FLAG_RX);

	(void)FUNC3(mac_cb, 0, false);
}