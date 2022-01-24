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
struct hnae_handle {int dummy; } ;
typedef  enum hnae_led_state { ____Placeholder_hnae_led_state } hnae_led_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hnae_handle*) ; 
 int FUNC1 (struct hns_mac_cb*,int) ; 
 struct hns_mac_cb* FUNC2 (struct hnae_handle*) ; 

__attribute__((used)) static int FUNC3(struct hnae_handle *handle,
				  enum hnae_led_state status)
{
	struct hns_mac_cb *mac_cb;

	FUNC0(handle);

	mac_cb = FUNC2(handle);

	return FUNC1(mac_cb, status);
}