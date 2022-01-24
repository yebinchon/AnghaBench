#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  line; int /*<<< orphan*/  filename_0_7; } ;
struct TYPE_3__ {TYPE_2__ assert; } ;
struct fw_debug_cmd {TYPE_1__ u; } ;
struct adapter {int /*<<< orphan*/  pdev_dev; } ;
typedef  int /*<<< orphan*/  asrt ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct adapter *adap, u32 mbox_addr)
{
	struct fw_debug_cmd asrt;

	FUNC2(adap, (__be64 *)&asrt, sizeof(asrt) / 8, mbox_addr);
	FUNC1(adap->pdev_dev,
		  "FW assertion at %.16s:%u, val0 %#x, val1 %#x\n",
		  asrt.u.assert.filename_0_7, FUNC0(asrt.u.assert.line),
		  FUNC0(asrt.u.assert.x), FUNC0(asrt.u.assert.y));
}