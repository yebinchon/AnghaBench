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
struct il_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int IL49_SCD_QUEUE_STTS_REG_POS_ACTIVE ; 
 int IL49_SCD_QUEUE_STTS_REG_POS_SCD_ACT_EN ; 
 int /*<<< orphan*/  FUNC1 (struct il_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct il_priv *il, u16 txq_id)
{
	/* Simply stop the queue, but don't change any configuration;
	 * the SCD_ACT_EN bit is the write-enable mask for the ACTIVE bit. */
	FUNC1(il, FUNC0(txq_id),
		   (0 << IL49_SCD_QUEUE_STTS_REG_POS_ACTIVE) |
		   (1 << IL49_SCD_QUEUE_STTS_REG_POS_SCD_ACT_EN));
}