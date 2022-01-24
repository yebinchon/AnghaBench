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
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int bankwidth; int size; int /*<<< orphan*/  map_priv_2; int /*<<< orphan*/  write; int /*<<< orphan*/  read; } ;
struct map_pci_info {TYPE_1__ map; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mtd_pci_read8 ; 
 int /*<<< orphan*/  mtd_pci_write8 ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct pci_dev *dev, struct map_pci_info *map)
{
	u32 win_base;

	map->map.bankwidth = 1;
	map->map.read = mtd_pci_read8,
	map->map.write = mtd_pci_write8,

	map->map.size     = 0x00800000;
	map->base         = FUNC0(FUNC3(dev, 0),
					    FUNC2(dev, 0));

	if (!map->base)
		return -ENOMEM;

	/*
	 * We want to base the memory window at Xscale
	 * bus address 0, not 0x1000.
	 */
	FUNC1(dev, 0x44, &win_base);
	FUNC4(dev, 0x44, 0);

	map->map.map_priv_2 = win_base;

	return 0;
}