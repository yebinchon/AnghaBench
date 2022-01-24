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
struct smsc911x_data {unsigned int set_bits_mask; unsigned int clear_bits_mask; unsigned int hashhi; unsigned int hashlo; } ;

/* Variables and functions */
 int /*<<< orphan*/  HASHH ; 
 int /*<<< orphan*/  HASHL ; 
 int /*<<< orphan*/  MAC_CR ; 
 int /*<<< orphan*/  FUNC0 (struct smsc911x_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct smsc911x_data*,int /*<<< orphan*/ ,char*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  hw ; 
 unsigned int FUNC2 (struct smsc911x_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct smsc911x_data*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct smsc911x_data *pdata)
{
	/* Performs the multicast & mac_cr update.  This is called when
	 * safe on the current hardware, and with the mac_lock held */
	unsigned int mac_cr;

	FUNC0(pdata);

	mac_cr = FUNC2(pdata, MAC_CR);
	mac_cr |= pdata->set_bits_mask;
	mac_cr &= ~(pdata->clear_bits_mask);
	FUNC3(pdata, MAC_CR, mac_cr);
	FUNC3(pdata, HASHH, pdata->hashhi);
	FUNC3(pdata, HASHL, pdata->hashlo);
	FUNC1(pdata, hw, "maccr 0x%08X, HASHH 0x%08X, HASHL 0x%08X",
		   mac_cr, pdata->hashhi, pdata->hashlo);
}