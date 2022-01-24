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

/* Variables and functions */
 int MLXSW_SP1_AFK_KEY_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 

__attribute__((used)) static void FUNC1(char *output, int block_index,
				       char *block)
{
	unsigned int offset = block_index * MLXSW_SP1_AFK_KEY_BLOCK_SIZE;
	char *output_indexed = output + offset;

	FUNC0(output_indexed, block, MLXSW_SP1_AFK_KEY_BLOCK_SIZE);
}