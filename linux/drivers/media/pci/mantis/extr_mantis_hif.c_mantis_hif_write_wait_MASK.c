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
struct mantis_pci {int gpif_status; int /*<<< orphan*/  num; } ;
struct mantis_ca {int /*<<< orphan*/  hif_write_wq; struct mantis_pci* ca_priv; } ;

/* Variables and functions */
 int EREMOTEIO ; 
 int /*<<< orphan*/  ERESTARTSYS ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  MANTIS_DEBUG ; 
 int /*<<< orphan*/  MANTIS_ERROR ; 
 int /*<<< orphan*/  MANTIS_GPIF_STATUS ; 
 int MANTIS_GPIF_WRACK ; 
 int MANTIS_SBUF_OPDONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct mantis_ca *ca)
{
	struct mantis_pci *mantis = ca->ca_priv;
	u32 opdone = 0, timeout = 0;
	int rc = 0;

	if (FUNC4(ca->hif_write_wq,
			       mantis->gpif_status & MANTIS_GPIF_WRACK,
			       FUNC2(500)) == -ERESTARTSYS) {

		FUNC0(MANTIS_ERROR, 1, "Adapter(%d) Slot(0): Write ACK timed out !", mantis->num);
		rc = -EREMOTEIO;
	}
	FUNC0(MANTIS_DEBUG, 1, "Write Acknowledged");
	mantis->gpif_status &= ~MANTIS_GPIF_WRACK;
	while (!opdone) {
		opdone = (FUNC1(MANTIS_GPIF_STATUS) & MANTIS_SBUF_OPDONE);
		FUNC3(500);
		timeout++;
		if (timeout > 100) {
			FUNC0(MANTIS_ERROR, 1, "Adapter(%d) Slot(0): Write operation timed out!", mantis->num);
			rc = -ETIMEDOUT;
			break;
		}
	}
	FUNC0(MANTIS_DEBUG, 1, "HIF Write success");
	return rc;
}