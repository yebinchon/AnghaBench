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
struct ene_device {int /*<<< orphan*/  rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENE_FW1 ; 
 int ENE_FW1_ENABLE ; 
 int ENE_FW1_IRQ ; 
 int /*<<< orphan*/  FUNC0 (struct ene_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ene_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ene_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct ene_device *dev)
{
	/* disable inputs */
	FUNC1(dev, false);
	FUNC2(dev, false);

	/* disable hardware IRQ and firmware flag */
	FUNC0(dev, ENE_FW1, ENE_FW1_ENABLE | ENE_FW1_IRQ);
	FUNC3(dev->rdev, true);
}