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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u16 ;
struct TYPE_4__ {int /*<<< orphan*/  vf_drv_loaded_mask; } ;
struct octeon_device {TYPE_2__ sriov_info; TYPE_1__* pci_dev; int /*<<< orphan*/  cores_crashed; } ;
typedef  int /*<<< orphan*/  err_msg_was_printed ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CN23XX_SLI_SCRATCH2 ; 
 int LIO_MAX_CORES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct octeon_device*) ; 
 struct octeon_device* FUNC4 (struct octeon_device*) ; 
 long FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 long FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ FUNC11 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(void *param)
{
	bool err_msg_was_printed[LIO_MAX_CORES];
	u16 mask_of_crashed_or_stuck_cores = 0;
	bool all_vf_links_are_disabled = false;
	struct octeon_device *oct = param;
	struct octeon_device *other_oct;
#ifdef CONFIG_MODULE_UNLOAD
	long refcount, vfs_referencing_pf;
	u64 vfs_mask1, vfs_mask2;
#endif
	int core;

	FUNC7(err_msg_was_printed, 0, sizeof(err_msg_was_printed));

	while (!FUNC6()) {
		/* sleep for a couple of seconds so that we don't hog the CPU */
		FUNC13(TASK_INTERRUPTIBLE);
		FUNC12(FUNC10(2000));

		mask_of_crashed_or_stuck_cores =
		    (u16)FUNC11(oct, CN23XX_SLI_SCRATCH2);

		if (!mask_of_crashed_or_stuck_cores)
			continue;

		FUNC1(oct->cores_crashed, true);
		other_oct = FUNC4(oct);
		if (other_oct)
			FUNC1(other_oct->cores_crashed, true);

		for (core = 0; core < LIO_MAX_CORES; core++) {
			bool core_crashed_or_got_stuck;

			core_crashed_or_got_stuck =
						(mask_of_crashed_or_stuck_cores
						 >> core) & 1;

			if (core_crashed_or_got_stuck &&
			    !err_msg_was_printed[core]) {
				FUNC2(&oct->pci_dev->dev,
					"ERROR: Octeon core %d crashed or got stuck!  See oct-fwdump for details.\n",
					core);
				err_msg_was_printed[core] = true;
			}
		}

		if (all_vf_links_are_disabled)
			continue;

		FUNC3(oct);
		FUNC3(other_oct);
		all_vf_links_are_disabled = true;

#ifdef CONFIG_MODULE_UNLOAD
		vfs_mask1 = READ_ONCE(oct->sriov_info.vf_drv_loaded_mask);
		vfs_mask2 = READ_ONCE(other_oct->sriov_info.vf_drv_loaded_mask);

		vfs_referencing_pf  = hweight64(vfs_mask1);
		vfs_referencing_pf += hweight64(vfs_mask2);

		refcount = module_refcount(THIS_MODULE);
		if (refcount >= vfs_referencing_pf) {
			while (vfs_referencing_pf) {
				module_put(THIS_MODULE);
				vfs_referencing_pf--;
			}
		}
#endif
	}

	return 0;
}