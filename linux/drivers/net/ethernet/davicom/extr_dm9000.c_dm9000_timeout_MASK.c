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
struct net_device {int dummy; } ;
struct board_info {int in_timeout; int /*<<< orphan*/  lock; int /*<<< orphan*/  io_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct board_info*) ; 
 struct board_info* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct net_device *dev)
{
	struct board_info *db = FUNC2(dev);
	u8 reg_save;
	unsigned long flags;

	/* Save previous register address */
	FUNC7(&db->lock, flags);
	db->in_timeout = 1;
	reg_save = FUNC6(db->io_addr);

	FUNC3(dev);
	FUNC0(dev);
	FUNC1(db);
	/* We can accept TX packets again */
	FUNC4(dev); /* prevent tx timeout */
	FUNC5(dev);

	/* Restore previous register address */
	FUNC9(reg_save, db->io_addr);
	db->in_timeout = 0;
	FUNC8(&db->lock, flags);
}