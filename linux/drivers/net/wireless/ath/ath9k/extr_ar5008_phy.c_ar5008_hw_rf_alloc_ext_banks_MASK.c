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
struct TYPE_2__ {int ia_rows; } ;
struct ath_hw {int /*<<< orphan*/  analogBank6Data; int /*<<< orphan*/  dev; TYPE_1__ iniBank6; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ath_hw *ah)
{
	int size = ah->iniBank6.ia_rows * sizeof(u32);

	if (FUNC0(ah))
	    return 0;

	ah->analogBank6Data = FUNC1(ah->dev, size, GFP_KERNEL);
	if (!ah->analogBank6Data)
		return -ENOMEM;

	return 0;
}