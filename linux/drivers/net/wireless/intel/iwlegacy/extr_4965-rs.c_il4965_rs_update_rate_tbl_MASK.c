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
typedef  int /*<<< orphan*/  u32 ;
struct il_scale_tbl_info {int dummy; } ;
struct il_priv {int dummy; } ;
struct il_lq_sta {int /*<<< orphan*/  lq; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ASYNC ; 
 int /*<<< orphan*/  FUNC0 (struct il_priv*,struct il_scale_tbl_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct il_priv*,struct il_lq_sta*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct il_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct il_priv *il, struct il_lq_sta *lq_sta,
			  struct il_scale_tbl_info *tbl, int idx, u8 is_green)
{
	u32 rate;

	/* Update uCode's rate table. */
	rate = FUNC0(il, tbl, idx, is_green);
	FUNC1(il, lq_sta, rate);
	FUNC2(il, &lq_sta->lq, CMD_ASYNC, false);
}