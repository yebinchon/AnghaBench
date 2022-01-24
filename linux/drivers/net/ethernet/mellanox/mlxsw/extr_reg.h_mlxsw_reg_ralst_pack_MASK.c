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
typedef  int /*<<< orphan*/  u8 ;

/* Variables and functions */
 int MLXSW_REG_RALST_BIN_COUNT ; 
 int /*<<< orphan*/  MLXSW_REG_RALST_BIN_NO_CHILD ; 
 int MLXSW_REG_RALST_BIN_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ralst ; 

__attribute__((used)) static inline void FUNC4(char *payload, u8 root_bin, u8 tree_id)
{
	FUNC0(ralst, payload);

	/* Initialize all bins to have no left or right child */
	FUNC1(payload + MLXSW_REG_RALST_BIN_OFFSET,
	       MLXSW_REG_RALST_BIN_NO_CHILD, MLXSW_REG_RALST_BIN_COUNT * 2);

	FUNC2(payload, root_bin);
	FUNC3(payload, tree_id);
}