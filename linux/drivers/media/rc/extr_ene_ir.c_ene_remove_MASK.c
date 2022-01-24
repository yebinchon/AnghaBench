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
struct pnp_dev {int dummy; } ;
struct ene_device {int /*<<< orphan*/  rdev; int /*<<< orphan*/  hw_io; int /*<<< orphan*/  irq; int /*<<< orphan*/  hw_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENE_IO_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct ene_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ene_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ene_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ene_device*) ; 
 struct ene_device* FUNC4 (struct pnp_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC9(struct pnp_dev *pnp_dev)
{
	struct ene_device *dev = FUNC4(pnp_dev);
	unsigned long flags;

	FUNC7(&dev->hw_lock, flags);
	FUNC0(dev);
	FUNC1(dev);
	FUNC8(&dev->hw_lock, flags);

	FUNC2(dev->irq, dev);
	FUNC6(dev->hw_io, ENE_IO_SIZE);
	FUNC5(dev->rdev);
	FUNC3(dev);
}