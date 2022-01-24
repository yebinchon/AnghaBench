#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_3__ {struct net_device* dev; } ;
typedef  TYPE_1__ local_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SANDISK_HCR_OFF ; 
 int /*<<< orphan*/  SANDISK_WLAN_ACTIVATION_OFF ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(local_info_t *local, int hcr)
{
	struct net_device *dev = local->dev;
	int i;

	FUNC0(0x80, SANDISK_WLAN_ACTIVATION_OFF);
	FUNC1(50);
	for (i = 0; i < 10; i++) {
		FUNC0(hcr, SANDISK_HCR_OFF);
	}
	FUNC1(55);
	FUNC0(0x45, SANDISK_WLAN_ACTIVATION_OFF);
}