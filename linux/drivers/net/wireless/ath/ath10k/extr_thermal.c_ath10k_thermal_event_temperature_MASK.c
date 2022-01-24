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
struct TYPE_2__ {int temperature; int /*<<< orphan*/  wmi_sync; } ;
struct ath10k {TYPE_1__ thermal; int /*<<< orphan*/  data_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct ath10k *ar, int temperature)
{
	FUNC1(&ar->data_lock);
	ar->thermal.temperature = temperature;
	FUNC2(&ar->data_lock);
	FUNC0(&ar->thermal.wmi_sync);
}