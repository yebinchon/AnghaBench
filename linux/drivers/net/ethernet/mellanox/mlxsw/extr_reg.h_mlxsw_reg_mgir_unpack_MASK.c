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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static inline void
FUNC5(char *payload, u32 *hw_rev, char *fw_info_psid,
		      u32 *fw_major, u32 *fw_minor, u32 *fw_sub_minor)
{
	*hw_rev = FUNC4(payload);
	FUNC3(payload, fw_info_psid);
	*fw_major = FUNC0(payload);
	*fw_minor = FUNC1(payload);
	*fw_sub_minor = FUNC2(payload);
}