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
struct r852_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  R852_CTL ; 
 int R852_CTL_ON ; 
 int R852_CTL_RESET ; 
 int /*<<< orphan*/  R852_HW ; 
 int /*<<< orphan*/  R852_HW_ENABLED ; 
 int R852_HW_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct r852_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct r852_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct r852_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct r852_device *dev)
{
	if (FUNC1(dev, R852_HW) & R852_HW_UNKNOWN) {
		FUNC2(dev, R852_CTL, R852_CTL_RESET | R852_CTL_ON);
		FUNC3(dev, R852_HW, R852_HW_ENABLED);
	} else {
		FUNC3(dev, R852_HW, R852_HW_ENABLED);
		FUNC2(dev, R852_CTL, R852_CTL_RESET | R852_CTL_ON);
	}
	FUNC0(300);
	FUNC2(dev, R852_CTL, 0);
}