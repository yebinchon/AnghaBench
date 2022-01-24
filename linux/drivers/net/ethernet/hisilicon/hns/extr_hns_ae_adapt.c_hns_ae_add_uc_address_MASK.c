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
struct hns_mac_cb {scalar_t__ mac_type; } ;
struct hnae_handle {int /*<<< orphan*/  vf_id; } ;

/* Variables and functions */
 int ENOSPC ; 
 scalar_t__ HNAE_PORT_SERVICE ; 
 struct hns_mac_cb* FUNC0 (struct hnae_handle*) ; 
 int FUNC1 (struct hns_mac_cb*,int /*<<< orphan*/ ,unsigned char const*) ; 

__attribute__((used)) static int FUNC2(struct hnae_handle *handle,
				 const unsigned char *addr)
{
	struct hns_mac_cb *mac_cb = FUNC0(handle);

	if (mac_cb->mac_type != HNAE_PORT_SERVICE)
		return -ENOSPC;

	return FUNC1(mac_cb, handle->vf_id, addr);
}