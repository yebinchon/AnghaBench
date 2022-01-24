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
struct TYPE_2__ {int /*<<< orphan*/  debugfs_entry; } ;
struct hva_dev {TYPE_1__ dbg; } ;

/* Variables and functions */
 int /*<<< orphan*/  HVA_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  device ; 
 int /*<<< orphan*/  encoders ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hva_dev*) ; 
 int /*<<< orphan*/  last ; 
 int /*<<< orphan*/  regs ; 

void FUNC3(struct hva_dev *hva)
{
	hva->dbg.debugfs_entry = FUNC0(HVA_NAME, NULL);
	if (!hva->dbg.debugfs_entry)
		goto err;

	if (!FUNC1(device))
		goto err;

	if (!FUNC1(encoders))
		goto err;

	if (!FUNC1(last))
		goto err;

	if (!FUNC1(regs))
		goto err;

	return;

err:
	FUNC2(hva);
}