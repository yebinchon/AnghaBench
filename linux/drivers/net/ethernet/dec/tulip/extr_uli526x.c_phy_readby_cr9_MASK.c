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
typedef  int u16 ;
struct uli526x_board_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PHY_DATA_0 ; 
 int /*<<< orphan*/  PHY_DATA_1 ; 
 int FUNC0 (struct uli526x_board_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct uli526x_board_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u16 FUNC2(struct uli526x_board_info *db, u8 phy_addr, u8 offset)
{
	u16 phy_data;
	int i;

	/* Send 33 synchronization clock to Phy controller */
	for (i = 0; i < 35; i++)
		FUNC1(db, PHY_DATA_1);

	/* Send start command(01) to Phy */
	FUNC1(db, PHY_DATA_0);
	FUNC1(db, PHY_DATA_1);

	/* Send read command(10) to Phy */
	FUNC1(db, PHY_DATA_1);
	FUNC1(db, PHY_DATA_0);

	/* Send Phy address */
	for (i = 0x10; i > 0; i = i >> 1)
		FUNC1(db, phy_addr & i ? PHY_DATA_1 : PHY_DATA_0);

	/* Send register address */
	for (i = 0x10; i > 0; i = i >> 1)
		FUNC1(db, offset & i ? PHY_DATA_1 : PHY_DATA_0);

	/* Skip transition state */
	FUNC0(db);

	/* read 16bit data */
	for (phy_data = 0, i = 0; i < 16; i++) {
		phy_data <<= 1;
		phy_data |= FUNC0(db);
	}

	return phy_data;
}