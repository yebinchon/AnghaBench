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
struct sja1105_cfg_pad_mii_id {int /*<<< orphan*/  txc_pd; int /*<<< orphan*/  txc_bypass; int /*<<< orphan*/  txc_delay; int /*<<< orphan*/  txc_stable_ovr; int /*<<< orphan*/  rxc_pd; int /*<<< orphan*/  rxc_bypass; int /*<<< orphan*/  rxc_delay; int /*<<< orphan*/  rxc_stable_ovr; } ;
typedef  enum packing_op { ____Placeholder_packing_op } packing_op ;

/* Variables and functions */
 int SJA1105_SIZE_CGU_CMD ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ *,int,int,int const,int) ; 

__attribute__((used)) static void
FUNC1(void *buf, struct sja1105_cfg_pad_mii_id *cmd,
			       enum packing_op op)
{
	const int size = SJA1105_SIZE_CGU_CMD;

	FUNC0(buf, &cmd->rxc_stable_ovr, 15, 15, size, op);
	FUNC0(buf, &cmd->rxc_delay,      14, 10, size, op);
	FUNC0(buf, &cmd->rxc_bypass,      9,  9, size, op);
	FUNC0(buf, &cmd->rxc_pd,          8,  8, size, op);
	FUNC0(buf, &cmd->txc_stable_ovr,  7,  7, size, op);
	FUNC0(buf, &cmd->txc_delay,       6,  2, size, op);
	FUNC0(buf, &cmd->txc_bypass,      1,  1, size, op);
	FUNC0(buf, &cmd->txc_pd,          0,  0, size, op);
}