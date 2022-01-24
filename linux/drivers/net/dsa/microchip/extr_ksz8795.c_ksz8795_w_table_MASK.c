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
typedef  int u16 ;
struct ksz_device {int /*<<< orphan*/  alu_mutex; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  REG_IND_CTRL_0 ; 
 int /*<<< orphan*/  REG_IND_DATA_HI ; 
 int /*<<< orphan*/  FUNC1 (struct ksz_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ksz_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ksz_device *dev, int table, u16 addr,
			    u64 data)
{
	u16 ctrl_addr;

	ctrl_addr = FUNC0(table) | addr;

	FUNC3(&dev->alu_mutex);
	FUNC2(dev, REG_IND_DATA_HI, data);
	FUNC1(dev, REG_IND_CTRL_0, ctrl_addr);
	FUNC4(&dev->alu_mutex);
}