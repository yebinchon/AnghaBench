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
struct emac_board_info {scalar_t__ membase; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ EMAC_CTL_REG ; 
 int /*<<< orphan*/  EMAC_CTL_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct emac_board_info *db)
{
	FUNC0(db->dev, "resetting device\n");

	/* RESET device */
	FUNC2(0, db->membase + EMAC_CTL_REG);
	FUNC1(200);
	FUNC2(EMAC_CTL_RESET, db->membase + EMAC_CTL_REG);
	FUNC1(200);
}