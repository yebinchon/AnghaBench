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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct macb {TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  SA1B ; 
 int /*<<< orphan*/  SA1T ; 
 int /*<<< orphan*/  SA2B ; 
 int /*<<< orphan*/  SA2T ; 
 int /*<<< orphan*/  SA3B ; 
 int /*<<< orphan*/  SA3T ; 
 int /*<<< orphan*/  SA4B ; 
 int /*<<< orphan*/  SA4T ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct macb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct macb *bp)
{
	u32 bottom;
	u16 top;

	bottom = FUNC1(*((u32 *)bp->dev->dev_addr));
	FUNC2(bp, SA1B, bottom);
	top = FUNC0(*((u16 *)(bp->dev->dev_addr + 4)));
	FUNC2(bp, SA1T, top);

	/* Clear unused address register sets */
	FUNC2(bp, SA2B, 0);
	FUNC2(bp, SA2T, 0);
	FUNC2(bp, SA3B, 0);
	FUNC2(bp, SA3T, 0);
	FUNC2(bp, SA4B, 0);
	FUNC2(bp, SA4T, 0);
}