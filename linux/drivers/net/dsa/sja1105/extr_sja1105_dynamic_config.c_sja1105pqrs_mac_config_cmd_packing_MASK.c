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
struct sja1105_dyn_cmd {int /*<<< orphan*/  index; int /*<<< orphan*/  rdwrset; int /*<<< orphan*/  errors; int /*<<< orphan*/  valid; } ;
typedef  enum packing_op { ____Placeholder_packing_op } packing_op ;

/* Variables and functions */
 int SJA1105ET_SIZE_MAC_CONFIG_DYN_ENTRY ; 
 int SJA1105PQRS_SIZE_MAC_CONFIG_ENTRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int const,int) ; 

__attribute__((used)) static void
FUNC1(void *buf, struct sja1105_dyn_cmd *cmd,
				   enum packing_op op)
{
	const int size = SJA1105ET_SIZE_MAC_CONFIG_DYN_ENTRY;
	u8 *p = buf + SJA1105PQRS_SIZE_MAC_CONFIG_ENTRY;

	FUNC0(p, &cmd->valid,   31, 31, size, op);
	FUNC0(p, &cmd->errors,  30, 30, size, op);
	FUNC0(p, &cmd->rdwrset, 29, 29, size, op);
	FUNC0(p, &cmd->index,    2,  0, size, op);
}