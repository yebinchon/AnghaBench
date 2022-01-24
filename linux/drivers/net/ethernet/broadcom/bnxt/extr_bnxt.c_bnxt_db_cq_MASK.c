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
struct bnxt_db_info {int db_key64; int /*<<< orphan*/  doorbell; } ;
struct bnxt {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnxt_db_info*,int /*<<< orphan*/ ) ; 
 int BNXT_FLAG_CHIP_P5 ; 
 int DBR_TYPE_CQ_ARMALL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct bnxt *bp, struct bnxt_db_info *db, u32 idx)
{
	if (bp->flags & BNXT_FLAG_CHIP_P5)
		FUNC2(db->db_key64 | DBR_TYPE_CQ_ARMALL | FUNC1(idx),
		       db->doorbell);
	else
		FUNC0(db, idx);
}