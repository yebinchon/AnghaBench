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
typedef  int u32 ;
struct mantis_slot {int slave_cfg; } ;
struct mantis_pci {int /*<<< orphan*/  num; } ;
struct mantis_ca {int /*<<< orphan*/  ca_lock; struct mantis_pci* ca_priv; struct mantis_slot* slot; } ;

/* Variables and functions */
 int /*<<< orphan*/  MANTIS_ERROR ; 
 int /*<<< orphan*/  MANTIS_GPIF_IRQCFG ; 
 int MANTIS_MASK_BRRDY ; 
 int MANTIS_MASK_EXTIRQ ; 
 int MANTIS_MASK_OTHERR ; 
 int MANTIS_MASK_OVFLW ; 
 int MANTIS_MASK_WRACK ; 
 int MANTIS_MASK_WSTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct mantis_ca *ca)
{
	struct mantis_slot *slot = ca->slot;
	struct mantis_pci *mantis = ca->ca_priv;
	u32 irqcfg;

	slot[0].slave_cfg = 0x70773028;
	FUNC0(MANTIS_ERROR, 1, "Adapter(%d) Initializing Mantis Host Interface", mantis->num);

	FUNC3(&ca->ca_lock);
	irqcfg = FUNC1(MANTIS_GPIF_IRQCFG);
	irqcfg = MANTIS_MASK_BRRDY	|
		 MANTIS_MASK_WRACK	|
		 MANTIS_MASK_EXTIRQ	|
		 MANTIS_MASK_WSTO	|
		 MANTIS_MASK_OTHERR	|
		 MANTIS_MASK_OVFLW;

	FUNC2(irqcfg, MANTIS_GPIF_IRQCFG);
	FUNC4(&ca->ca_lock);

	return 0;
}