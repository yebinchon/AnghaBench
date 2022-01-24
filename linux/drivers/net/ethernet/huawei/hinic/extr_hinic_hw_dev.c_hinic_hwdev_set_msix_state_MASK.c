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
typedef  int /*<<< orphan*/  u16 ;
struct hinic_hwdev {int /*<<< orphan*/  hwif; } ;
typedef  enum hinic_msix_state { ____Placeholder_hinic_msix_state } hinic_msix_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC1(struct hinic_hwdev *hwdev, u16 msix_index,
				enum hinic_msix_state flag)
{
	FUNC0(hwdev->hwif, msix_index, flag);
}