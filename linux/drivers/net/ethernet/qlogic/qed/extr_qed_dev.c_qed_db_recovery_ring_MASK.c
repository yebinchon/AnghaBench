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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct qed_hwfn {int /*<<< orphan*/  cdev; } ;
struct qed_db_recovery_entry {scalar_t__ db_width; scalar_t__ db_data; int /*<<< orphan*/  db_addr; } ;

/* Variables and functions */
 scalar_t__ DB_REC_WIDTH_32B ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QED_MSG_SPQ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct qed_hwfn *p_hwfn,
				 struct qed_db_recovery_entry *db_entry)
{
	/* Print according to width */
	if (db_entry->db_width == DB_REC_WIDTH_32B) {
		FUNC2(p_hwfn, QED_MSG_SPQ,
			   "ringing doorbell address %p data %x\n",
			   db_entry->db_addr,
			   *(u32 *)db_entry->db_data);
	} else {
		FUNC2(p_hwfn, QED_MSG_SPQ,
			   "ringing doorbell address %p data %llx\n",
			   db_entry->db_addr,
			   *(u64 *)(db_entry->db_data));
	}

	/* Sanity */
	if (!FUNC3(p_hwfn->cdev, db_entry->db_addr,
			       db_entry->db_width, db_entry->db_data))
		return;

	/* Flush the write combined buffer. Since there are multiple doorbelling
	 * entities using the same address, if we don't flush, a transaction
	 * could be lost.
	 */
	FUNC4();

	/* Ring the doorbell */
	if (db_entry->db_width == DB_REC_WIDTH_32B)
		FUNC0(db_entry->db_addr,
			      *(u32 *)(db_entry->db_data));
	else
		FUNC1(db_entry->db_addr,
				*(u64 *)(db_entry->db_data));

	/* Flush the write combined buffer. Next doorbell may come from a
	 * different entity to the same address...
	 */
	FUNC4();
}