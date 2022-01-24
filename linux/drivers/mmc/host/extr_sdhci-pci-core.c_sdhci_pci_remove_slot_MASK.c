#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct sdhci_pci_slot {TYPE_4__* host; TYPE_3__* data; TYPE_2__* chip; } ;
struct TYPE_9__ {scalar_t__ ioaddr; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* cleanup ) (TYPE_3__*) ;} ;
struct TYPE_7__ {TYPE_1__* fixes; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* remove_slot ) (struct sdhci_pci_slot*,int) ;} ;

/* Variables and functions */
 scalar_t__ SDHCI_INT_STATUS ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_pci_slot*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sdhci_pci_slot*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC6(struct sdhci_pci_slot *slot)
{
	int dead;
	u32 scratch;

	FUNC2(slot);

	dead = 0;
	scratch = FUNC0(slot->host->ioaddr + SDHCI_INT_STATUS);
	if (scratch == (u32)-1)
		dead = 1;

	FUNC3(slot->host, dead);

	if (slot->chip->fixes && slot->chip->fixes->remove_slot)
		slot->chip->fixes->remove_slot(slot, dead);

	if (slot->data && slot->data->cleanup)
		slot->data->cleanup(slot->data);

	FUNC1(slot->host);
}