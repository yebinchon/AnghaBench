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
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct mlx5_core_dev {int /*<<< orphan*/  pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  host_total_vfs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 TYPE_1__ host_params_context ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/ * FUNC4 (struct mlx5_core_dev*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  query_esw_functions_out ; 

__attribute__((used)) static u16 FUNC6(struct mlx5_core_dev *dev)
{
	u16 host_total_vfs;
	const u32 *out;

	if (FUNC3(dev)) {
		out = FUNC4(dev);

		/* Old FW doesn't support getting total_vfs from esw func
		 * but supports getting it from pci_sriov.
		 */
		if (FUNC0(out))
			goto done;
		host_total_vfs = FUNC1(query_esw_functions_out, out,
					  host_params_context.host_total_vfs);
		FUNC2(out);
		if (host_total_vfs)
			return host_total_vfs;
	}

done:
	return FUNC5(dev->pdev);
}