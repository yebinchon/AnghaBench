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
struct hns_mac_cb {scalar_t__ media_type; } ;
struct hnae_handle {int dummy; } ;

/* Variables and functions */
 scalar_t__ HNAE_MEDIA_TYPE_FIBER ; 
 int /*<<< orphan*/  FUNC0 (struct hnae_handle*) ; 
 struct hns_mac_cb* FUNC1 (struct hnae_handle*) ; 
 int /*<<< orphan*/  FUNC2 (struct hns_mac_cb*) ; 

__attribute__((used)) static void FUNC3(struct hnae_handle *handle)
{
	struct hns_mac_cb *mac_cb;

	FUNC0(handle);
	mac_cb = FUNC1(handle);
	if (mac_cb->media_type != HNAE_MEDIA_TYPE_FIBER)
		return;

	FUNC2(mac_cb);
}