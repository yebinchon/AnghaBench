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
struct rcb_common_cb {TYPE_1__* dsaf_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dsaf_ver; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int HNS_DEBUG_RING_IRQ_IDX ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct rcb_common_cb *rcb_common)
{
	bool is_ver1 = FUNC0(rcb_common->dsaf_dev->dsaf_ver);

	if (!FUNC1(rcb_common->dsaf_dev))
		return FUNC2(is_ver1);
	else
		return  HNS_DEBUG_RING_IRQ_IDX;
}