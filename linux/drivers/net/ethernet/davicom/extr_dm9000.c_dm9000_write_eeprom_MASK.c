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
typedef  int u8 ;
struct board_info {int flags; int /*<<< orphan*/  addr_lock; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DM9000_EPAR ; 
 int /*<<< orphan*/  DM9000_EPCR ; 
 int /*<<< orphan*/  DM9000_EPDRH ; 
 int /*<<< orphan*/  DM9000_EPDRL ; 
 int DM9000_PLATF_NO_EEPROM ; 
 int EPCR_ERPRW ; 
 int EPCR_WEP ; 
 int /*<<< orphan*/  FUNC0 (struct board_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct board_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC7(struct board_info *db, int offset, u8 *data)
{
	unsigned long flags;

	if (db->flags & DM9000_PLATF_NO_EEPROM)
		return;

	FUNC3(&db->addr_lock);

	FUNC5(&db->lock, flags);
	FUNC1(db, DM9000_EPAR, offset);
	FUNC1(db, DM9000_EPDRH, data[1]);
	FUNC1(db, DM9000_EPDRL, data[0]);
	FUNC1(db, DM9000_EPCR, EPCR_WEP | EPCR_ERPRW);
	FUNC6(&db->lock, flags);

	FUNC0(db);

	FUNC2(1);	/* wait at least 150uS to clear */

	FUNC5(&db->lock, flags);
	FUNC1(db, DM9000_EPCR, 0);
	FUNC6(&db->lock, flags);

	FUNC4(&db->addr_lock);
}