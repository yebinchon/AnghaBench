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
typedef  int /*<<< orphan*/  u16 ;
struct hns_mac_cb {int dummy; } ;
struct hnae_handle {int dummy; } ;

/* Variables and functions */
 struct hns_mac_cb* FUNC0 (struct hnae_handle*) ; 
 int FUNC1 (struct hns_mac_cb*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct hnae_handle *handle,
			       u8 *auto_neg, u16 *speed, u8 *duplex)
{
	struct hns_mac_cb *mac_cb = FUNC0(handle);

	return FUNC1(mac_cb, auto_neg, speed, duplex);
}