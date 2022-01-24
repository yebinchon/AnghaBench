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
struct iwl_trans {int dummy; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC2(struct iwl_trans *trans)
{
	u16 next_link_addr = 0;
	__le16 link_value;
	bool is_empty = false;

	/* locate the beginning of OTP link list */
	if (!FUNC1(trans, next_link_addr, &link_value)) {
		if (!link_value) {
			FUNC0(trans, "OTP is empty\n");
			is_empty = true;
		}
	} else {
		FUNC0(trans, "Unable to read first block of OTP list.\n");
		is_empty = true;
	}

	return is_empty;
}