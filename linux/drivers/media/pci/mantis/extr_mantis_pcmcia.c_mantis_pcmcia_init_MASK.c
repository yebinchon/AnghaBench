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
struct mantis_ca {int /*<<< orphan*/  en50221; int /*<<< orphan*/  slot_state; struct mantis_pci* ca_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  DVB_CA_EN50221_CAMCHANGE_INSERTED ; 
 int /*<<< orphan*/  DVB_CA_EN50221_CAMCHANGE_REMOVED ; 
 int /*<<< orphan*/  MANTIS_DEBUG ; 
 int MANTIS_GPIF_DETSTAT ; 
 int /*<<< orphan*/  MANTIS_GPIF_IRQCFG ; 
 int /*<<< orphan*/  MANTIS_GPIF_STATUS ; 
 int /*<<< orphan*/  MANTIS_INT_IRQ0 ; 
 int MANTIS_MASK_PLUGIN ; 
 int MANTIS_MASK_PLUGOUT ; 
 int /*<<< orphan*/  MODULE_INSERTED ; 
 int /*<<< orphan*/  MODULE_XTRACTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mantis_pci*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

int FUNC5(struct mantis_ca *ca)
{
	struct mantis_pci *mantis = ca->ca_priv;

	u32 gpif_stat, card_stat;

	FUNC2(mantis, MANTIS_INT_IRQ0);
	gpif_stat = FUNC3(MANTIS_GPIF_STATUS);
	card_stat = FUNC3(MANTIS_GPIF_IRQCFG);

	if (gpif_stat & MANTIS_GPIF_DETSTAT) {
		FUNC0(MANTIS_DEBUG, 1, "CAM found on Adapter(%d) Slot(0)", mantis->num);
		FUNC4(card_stat | MANTIS_MASK_PLUGOUT, MANTIS_GPIF_IRQCFG);
		ca->slot_state = MODULE_INSERTED;
		FUNC1(&ca->en50221,
					     0,
					     DVB_CA_EN50221_CAMCHANGE_INSERTED);
	} else {
		FUNC0(MANTIS_DEBUG, 1, "Empty Slot on Adapter(%d) Slot(0)", mantis->num);
		FUNC4(card_stat | MANTIS_MASK_PLUGIN, MANTIS_GPIF_IRQCFG);
		ca->slot_state = MODULE_XTRACTED;
		FUNC1(&ca->en50221,
					     0,
					     DVB_CA_EN50221_CAMCHANGE_REMOVED);
	}

	return 0;
}