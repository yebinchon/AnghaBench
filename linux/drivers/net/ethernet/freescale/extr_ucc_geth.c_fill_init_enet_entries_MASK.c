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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct ucc_geth_private {int dummy; } ;

/* Variables and functions */
 scalar_t__ ENET_INIT_PARAM_SNUM_SHIFT ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct ucc_geth_private*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 () ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct ucc_geth_private *ugeth,
				  u32 *p_start,
				  u8 num_entries,
				  u32 thread_size,
				  u32 thread_alignment,
				  unsigned int risc,
				  int skip_page_for_first_entry)
{
	u32 init_enet_offset;
	u8 i;
	int snum;

	for (i = 0; i < num_entries; i++) {
		if ((snum = FUNC3()) < 0) {
			if (FUNC1(ugeth))
				FUNC2("Can not get SNUM\n");
			return snum;
		}
		if ((i == 0) && skip_page_for_first_entry)
		/* First entry of Rx does not have page */
			init_enet_offset = 0;
		else {
			init_enet_offset =
			    FUNC4(thread_size, thread_alignment);
			if (FUNC0(init_enet_offset)) {
				if (FUNC1(ugeth))
					FUNC2("Can not allocate DPRAM memory\n");
				FUNC5((u8) snum);
				return -ENOMEM;
			}
		}
		*(p_start++) =
		    ((u8) snum << ENET_INIT_PARAM_SNUM_SHIFT) | init_enet_offset
		    | risc;
	}

	return 0;
}