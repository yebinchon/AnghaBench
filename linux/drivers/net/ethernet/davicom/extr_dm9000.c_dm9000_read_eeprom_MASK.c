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
 int EPCR_ERPRR ; 
 int /*<<< orphan*/  FUNC0 (struct board_info*) ; 
 int FUNC1 (struct board_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct board_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC8(struct board_info *db, int offset, u8 *to)
{
	unsigned long flags;

	if (db->flags & DM9000_PLATF_NO_EEPROM) {
		to[0] = 0xff;
		to[1] = 0xff;
		return;
	}

	FUNC4(&db->addr_lock);

	FUNC6(&db->lock, flags);

	FUNC2(db, DM9000_EPAR, offset);
	FUNC2(db, DM9000_EPCR, EPCR_ERPRR);

	FUNC7(&db->lock, flags);

	FUNC0(db);

	/* delay for at-least 150uS */
	FUNC3(1);

	FUNC6(&db->lock, flags);

	FUNC2(db, DM9000_EPCR, 0x0);

	to[0] = FUNC1(db, DM9000_EPDRL);
	to[1] = FUNC1(db, DM9000_EPDRH);

	FUNC7(&db->lock, flags);

	FUNC5(&db->addr_lock);
}