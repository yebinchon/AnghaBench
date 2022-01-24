#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct pci_dev {int dummy; } ;
struct pci_bus {struct pci_dev* self; } ;
struct ixgbe_adapter {int /*<<< orphan*/  hw; TYPE_2__* pdev; } ;
struct TYPE_4__ {TYPE_1__* bus; } ;
struct TYPE_3__ {struct pci_bus* parent; } ;

/* Variables and functions */
 scalar_t__ IXGBE_FAILED_READ_CFG_WORD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static int FUNC3(struct ixgbe_adapter *adapter,
					  u32 reg, u16 *value)
{
	struct pci_dev *parent_dev;
	struct pci_bus *parent_bus;

	parent_bus = adapter->pdev->bus->parent;
	if (!parent_bus)
		return -1;

	parent_dev = parent_bus->self;
	if (!parent_dev)
		return -1;

	if (!FUNC1(parent_dev))
		return -1;

	FUNC2(parent_dev, reg, value);
	if (*value == IXGBE_FAILED_READ_CFG_WORD &&
	    FUNC0(&adapter->hw, parent_dev))
		return -1;
	return 0;
}