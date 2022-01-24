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
struct ene_device {scalar_t__ hw_learning_and_tx_capable; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ene_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ene_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ene_device*) ; 

__attribute__((used)) static void FUNC3(struct ene_device *dev)
{
	if (dev->hw_learning_and_tx_capable) {
		FUNC1(dev);
		FUNC2(dev);
	}

	FUNC0(dev);
}