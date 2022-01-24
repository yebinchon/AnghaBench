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
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  map_priv_2; } ;
struct map_pci_info {TYPE_1__ map; scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct pci_dev *dev, struct map_pci_info *map)
{
	if (map->base)
		FUNC0(map->base);
	FUNC1(dev, 0x44, map->map.map_priv_2);
}