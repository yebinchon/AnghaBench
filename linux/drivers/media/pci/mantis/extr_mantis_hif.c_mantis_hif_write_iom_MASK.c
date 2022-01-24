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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct mantis_pci {int /*<<< orphan*/  num; } ;
struct mantis_ca {int /*<<< orphan*/  ca_lock; struct mantis_pci* ca_priv; } ;

/* Variables and functions */
 int EREMOTEIO ; 
 int /*<<< orphan*/  MANTIS_DEBUG ; 
 int /*<<< orphan*/  MANTIS_ERROR ; 
 int /*<<< orphan*/  MANTIS_GPIF_ADDR ; 
 int /*<<< orphan*/  MANTIS_GPIF_DOUT ; 
 int /*<<< orphan*/  MANTIS_GPIF_HIFRDWRN ; 
 int /*<<< orphan*/  MANTIS_GPIF_PCMCIAIOM ; 
 int /*<<< orphan*/  MANTIS_GPIF_PCMCIAREG ; 
 int /*<<< orphan*/  MANTIS_HIF_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC1 (struct mantis_ca*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

int FUNC6(struct mantis_ca *ca, u32 addr, u8 data)
{
	struct mantis_pci *mantis = ca->ca_priv;
	u32 hif_addr = 0;

	FUNC0(MANTIS_DEBUG, 1, "Adapter(%d) Slot(0): Request HIF I/O Write", mantis->num);
	FUNC3(&ca->ca_lock);
	hif_addr &= ~MANTIS_GPIF_PCMCIAREG;
	hif_addr &= ~MANTIS_GPIF_HIFRDWRN;
	hif_addr |=  MANTIS_GPIF_PCMCIAIOM;
	hif_addr |=  MANTIS_HIF_STATUS;
	hif_addr |=  addr;

	FUNC2(hif_addr, MANTIS_GPIF_ADDR);
	FUNC2(data, MANTIS_GPIF_DOUT);

	if (FUNC1(ca) != 0) {
		FUNC0(MANTIS_ERROR, 1, "Adapter(%d) Slot(0): HIF Smart Buffer operation failed", mantis->num);
		FUNC4(&ca->ca_lock);
		return -EREMOTEIO;
	}
	FUNC0(MANTIS_DEBUG, 1, "I/O Write: (0x%02x to 0x%02x)", data, addr);
	FUNC4(&ca->ca_lock);
	FUNC5(50);

	return 0;
}