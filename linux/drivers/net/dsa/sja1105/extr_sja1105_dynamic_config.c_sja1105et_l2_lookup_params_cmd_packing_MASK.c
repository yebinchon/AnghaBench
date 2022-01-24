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
struct sja1105_dyn_cmd {int /*<<< orphan*/  valid; } ;
typedef  enum packing_op { ____Placeholder_packing_op } packing_op ;

/* Variables and functions */
 int /*<<< orphan*/  SJA1105ET_SIZE_L2_LOOKUP_PARAMS_DYN_CMD ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC1(void *buf, struct sja1105_dyn_cmd *cmd,
				       enum packing_op op)
{
	FUNC0(buf, &cmd->valid, 31, 31,
			SJA1105ET_SIZE_L2_LOOKUP_PARAMS_DYN_CMD, op);
}