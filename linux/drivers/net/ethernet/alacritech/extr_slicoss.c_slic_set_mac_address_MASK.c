#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct slic_device {TYPE_1__* netdev; } ;
struct TYPE_2__ {int* dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  SLIC_REG_WRADDRAH ; 
 int /*<<< orphan*/  SLIC_REG_WRADDRAL ; 
 int /*<<< orphan*/  SLIC_REG_WRADDRBH ; 
 int /*<<< orphan*/  SLIC_REG_WRADDRBL ; 
 int /*<<< orphan*/  FUNC0 (struct slic_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct slic_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct slic_device *sdev)
{
	u8 *addr = sdev->netdev->dev_addr;
	u32 val;

	val = addr[5] | addr[4] << 8 | addr[3] << 16 | addr[2] << 24;

	FUNC1(sdev, SLIC_REG_WRADDRAL, val);
	FUNC1(sdev, SLIC_REG_WRADDRBL, val);

	val = addr[0] << 8 | addr[1];

	FUNC1(sdev, SLIC_REG_WRADDRAH, val);
	FUNC1(sdev, SLIC_REG_WRADDRBH, val);
	FUNC0(sdev);
}