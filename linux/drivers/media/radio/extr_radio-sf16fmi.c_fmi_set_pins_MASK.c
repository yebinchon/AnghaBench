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
struct fmi {int /*<<< orphan*/  lock; int /*<<< orphan*/  io; int /*<<< orphan*/  mute; } ;

/* Variables and functions */
 int FMI_BIT_TUN_CE ; 
 int FMI_BIT_TUN_CLK ; 
 int FMI_BIT_TUN_DATA ; 
 int FMI_BIT_TUN_STRQ ; 
 int FMI_BIT_VOL_SW ; 
 int LM7000_CE ; 
 int LM7000_CLK ; 
 int LM7000_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *handle, u8 pins)
{
	struct fmi *fmi = handle;
	u8 bits = FMI_BIT_TUN_STRQ;

	if (!fmi->mute)
		bits |= FMI_BIT_VOL_SW;

	if (pins & LM7000_DATA)
		bits |= FMI_BIT_TUN_DATA;
	if (pins & LM7000_CLK)
		bits |= FMI_BIT_TUN_CLK;
	if (pins & LM7000_CE)
		bits |= FMI_BIT_TUN_CE;

	FUNC0(&fmi->lock);
	FUNC2(bits, fmi->io);
	FUNC1(&fmi->lock);
}