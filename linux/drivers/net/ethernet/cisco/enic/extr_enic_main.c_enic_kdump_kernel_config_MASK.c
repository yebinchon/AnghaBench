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
struct TYPE_2__ {int /*<<< orphan*/  mtu; int /*<<< orphan*/  wq_desc_count; int /*<<< orphan*/  rq_desc_count; } ;
struct enic {int rq_count; int wq_count; TYPE_1__ config; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENIC_MIN_RQ_DESCS ; 
 int /*<<< orphan*/  ENIC_MIN_WQ_DESCS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct enic*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  u16 ; 

__attribute__((used)) static void FUNC4(struct enic *enic)
{
	if (FUNC2()) {
		FUNC0(FUNC1(enic), "Running from within kdump kernel. Using minimal resources\n");
		enic->rq_count = 1;
		enic->wq_count = 1;
		enic->config.rq_desc_count = ENIC_MIN_RQ_DESCS;
		enic->config.wq_desc_count = ENIC_MIN_WQ_DESCS;
		enic->config.mtu = FUNC3(u16, 1500, enic->config.mtu);
	}
}