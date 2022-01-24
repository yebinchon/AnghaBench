#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  cdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  svc_map; } ;
struct ath10k {TYPE_3__ thermal; TYPE_2__* dev; TYPE_1__ wmi; } ;
struct TYPE_5__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  WMI_SERVICE_THERM_THROT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct ath10k *ar)
{
	if (!FUNC1(WMI_SERVICE_THERM_THROT, ar->wmi.svc_map))
		return;

	FUNC0(&ar->dev->kobj, "cooling_device");
	FUNC2(ar->thermal.cdev);
}