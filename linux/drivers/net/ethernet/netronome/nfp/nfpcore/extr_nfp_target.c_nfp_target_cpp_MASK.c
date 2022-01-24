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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int const,int const,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int const) ; 

int FUNC7(u32 cpp_island_id, u64 cpp_island_address,
		   u32 *cpp_target_id, u64 *cpp_target_address,
		   const u32 *imb_table)
{
	const int island = FUNC2(cpp_island_id);
	const int target = FUNC3(cpp_island_id);
	u32 imb;
	int err;

	if (target < 0 || target >= 16) {
		FUNC6("Invalid CPP target: %d\n", target);
		return -EINVAL;
	}

	if (island == 0) {
		/* Already translated */
		*cpp_target_id = cpp_island_id;
		*cpp_target_address = cpp_island_address;
		return 0;
	}

	/* CPP + Island only allowed on systems with IMB tables */
	if (!imb_table)
		return -EINVAL;

	imb = imb_table[target];

	*cpp_target_address = cpp_island_address;
	err = FUNC5(cpp_target_address, island, target,
				    ((imb >> 13) & 7), ((imb >> 12) & 1),
				    ((imb >> 6)  & 0x3f), ((imb >> 0)  & 0x3f));
	if (err) {
		FUNC6("Can't encode CPP address: %d\n", err);
		return err;
	}

	*cpp_target_id = FUNC0(target,
				    FUNC1(cpp_island_id),
				    FUNC4(cpp_island_id));

	return 0;
}