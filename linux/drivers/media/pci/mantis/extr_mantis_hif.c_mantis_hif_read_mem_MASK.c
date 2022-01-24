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
struct mantis_pci {int num; } ;
struct mantis_ca {int /*<<< orphan*/  ca_lock; struct mantis_pci* ca_priv; } ;

/* Variables and functions */
 int EREMOTEIO ; 
 int /*<<< orphan*/  MANTIS_DEBUG ; 
 int /*<<< orphan*/  MANTIS_ERROR ; 
 int /*<<< orphan*/  MANTIS_GPIF_ADDR ; 
 int /*<<< orphan*/  MANTIS_GPIF_BRADDR ; 
 int /*<<< orphan*/  MANTIS_GPIF_BRBYTES ; 
 int /*<<< orphan*/  MANTIS_GPIF_DIN ; 
 int MANTIS_GPIF_HIFRDWRN ; 
 int MANTIS_GPIF_PCMCIAIOM ; 
 int MANTIS_GPIF_PCMCIAREG ; 
 int MANTIS_HIF_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,int) ; 
 scalar_t__ FUNC1 (struct mantis_ca*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

int FUNC7(struct mantis_ca *ca, u32 addr)
{
	struct mantis_pci *mantis = ca->ca_priv;
	u32 hif_addr = 0, data, count = 4;

	FUNC0(MANTIS_DEBUG, 1, "Adapter(%d) Slot(0): Request HIF Mem Read", mantis->num);
	FUNC4(&ca->ca_lock);
	hif_addr &= ~MANTIS_GPIF_PCMCIAREG;
	hif_addr &= ~MANTIS_GPIF_PCMCIAIOM;
	hif_addr |=  MANTIS_HIF_STATUS;
	hif_addr |=  addr;

	FUNC3(hif_addr, MANTIS_GPIF_BRADDR);
	FUNC3(count, MANTIS_GPIF_BRBYTES);
	FUNC6(20);
	FUNC3(hif_addr | MANTIS_GPIF_HIFRDWRN, MANTIS_GPIF_ADDR);

	if (FUNC1(ca) != 0) {
		FUNC0(MANTIS_ERROR, 1, "Adapter(%d) Slot(0): GPIF Smart Buffer operation failed", mantis->num);
		FUNC5(&ca->ca_lock);
		return -EREMOTEIO;
	}
	data = FUNC2(MANTIS_GPIF_DIN);
	FUNC5(&ca->ca_lock);
	FUNC0(MANTIS_DEBUG, 1, "Mem Read: 0x%02x", data);
	return (data >> 24) & 0xff;
}