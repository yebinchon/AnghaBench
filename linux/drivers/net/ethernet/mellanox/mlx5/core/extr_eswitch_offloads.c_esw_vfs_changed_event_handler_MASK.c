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
typedef  scalar_t__ u16 ;
struct TYPE_3__ {scalar_t__ num_vfs; } ;
struct mlx5_eswitch {TYPE_1__ esw_funcs; } ;
struct TYPE_4__ {int /*<<< orphan*/  host_pf_disabled; int /*<<< orphan*/  host_num_of_vfs; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlx5_eswitch*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_eswitch*,scalar_t__) ; 
 TYPE_2__ host_params_context ; 
 int /*<<< orphan*/  query_esw_functions_out ; 

__attribute__((used)) static void
FUNC3(struct mlx5_eswitch *esw, const u32 *out)
{
	bool host_pf_disabled;
	u16 new_num_vfs;

	new_num_vfs = FUNC0(query_esw_functions_out, out,
			       host_params_context.host_num_of_vfs);
	host_pf_disabled = FUNC0(query_esw_functions_out, out,
				    host_params_context.host_pf_disabled);

	if (new_num_vfs == esw->esw_funcs.num_vfs || host_pf_disabled)
		return;

	/* Number of VFs can only change from "0 to x" or "x to 0". */
	if (esw->esw_funcs.num_vfs > 0) {
		FUNC2(esw, esw->esw_funcs.num_vfs);
	} else {
		int err;

		err = FUNC1(esw, new_num_vfs);
		if (err)
			return;
	}
	esw->esw_funcs.num_vfs = new_num_vfs;
}