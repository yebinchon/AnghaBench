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
struct mantis_pci {int /*<<< orphan*/  num; } ;
struct mantis_ca {scalar_t__ slot_state; struct mantis_pci* ca_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  MANTIS_CARD_RESET ; 
 int /*<<< orphan*/  MANTIS_DEBUG ; 
 int /*<<< orphan*/  MANTIS_GPIF_IRQCFG ; 
 int MANTIS_MASK_PLUGIN ; 
 int MANTIS_MASK_PLUGOUT ; 
 scalar_t__ MODULE_INSERTED ; 
 scalar_t__ MODULE_XTRACTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(struct mantis_ca *ca)
{
	struct mantis_pci *mantis = ca->ca_priv;

	u32 gpif_irqcfg;

	if (ca->slot_state == MODULE_XTRACTED) {
		FUNC0(MANTIS_DEBUG, 1, "Event: CAM Plugged IN: Adapter(%d) Slot(0)", mantis->num);
		FUNC3(50);
		FUNC2(0xda000000, MANTIS_CARD_RESET);
		gpif_irqcfg  = FUNC1(MANTIS_GPIF_IRQCFG);
		gpif_irqcfg |= MANTIS_MASK_PLUGOUT;
		gpif_irqcfg &= ~MANTIS_MASK_PLUGIN;
		FUNC2(gpif_irqcfg, MANTIS_GPIF_IRQCFG);
		FUNC3(500);
		ca->slot_state = MODULE_INSERTED;
	}
	FUNC3(100);
}