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
struct hns_mac_cb {scalar_t__ media_type; int /*<<< orphan*/  mac_id; } ;

/* Variables and functions */
 scalar_t__ HNAE_MEDIA_TYPE_FIBER ; 
 int /*<<< orphan*/  HNS_OP_LED_SET_FUNC ; 
 int /*<<< orphan*/  FUNC0 (struct hns_mac_cb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(struct hns_mac_cb *mac_cb)
{
       if (!mac_cb) {
               FUNC1("cpld_led_reset mac_cb is null!\n");
               return;
       }

       if (mac_cb->media_type != HNAE_MEDIA_TYPE_FIBER)
                return;

       FUNC0(mac_cb, HNS_OP_LED_SET_FUNC,
               0, mac_cb->mac_id, 0);
}