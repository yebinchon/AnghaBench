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
struct seq_file {scalar_t__ private; } ;
struct docg3 {TYPE_1__* cascade; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOC_DPS0_ADDRHIGH ; 
 int /*<<< orphan*/  DOC_DPS0_ADDRLOW ; 
 int /*<<< orphan*/  DOC_DPS0_STATUS ; 
 int /*<<< orphan*/  DOC_DPS1_ADDRHIGH ; 
 int /*<<< orphan*/  DOC_DPS1_ADDRLOW ; 
 int /*<<< orphan*/  DOC_DPS1_STATUS ; 
 int DOC_DPS_HW_LOCK_ENABLED ; 
 int DOC_DPS_KEY_OK ; 
 int DOC_DPS_OTP_PROTECTED ; 
 int DOC_DPS_READ_PROTECTED ; 
 int DOC_DPS_WRITE_PROTECTED ; 
 int /*<<< orphan*/  DOC_PROTECTION ; 
 int DOC_PROTECT_CUSTOMER_OTP_LOCK ; 
 int DOC_PROTECT_FOUNDRY_OTP_LOCK ; 
 int DOC_PROTECT_IPL_DOWNLOAD_LOCK ; 
 int DOC_PROTECT_LOCK_INPUT ; 
 int DOC_PROTECT_PROTECTION_ENABLED ; 
 int DOC_PROTECT_PROTECTION_ERROR ; 
 int DOC_PROTECT_STICKY_LOCK ; 
 int FUNC0 (struct docg3*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct docg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC6(struct seq_file *s, void *p)
{
	struct docg3 *docg3 = (struct docg3 *)s->private;
	int protect, dps0, dps0_low, dps0_high, dps1, dps1_low, dps1_high;

	FUNC2(&docg3->cascade->lock);
	protect = FUNC0(docg3, DOC_PROTECTION);
	dps0 = FUNC0(docg3, DOC_DPS0_STATUS);
	dps0_low = FUNC1(docg3, DOC_DPS0_ADDRLOW);
	dps0_high = FUNC1(docg3, DOC_DPS0_ADDRHIGH);
	dps1 = FUNC0(docg3, DOC_DPS1_STATUS);
	dps1_low = FUNC1(docg3, DOC_DPS1_ADDRLOW);
	dps1_high = FUNC1(docg3, DOC_DPS1_ADDRHIGH);
	FUNC3(&docg3->cascade->lock);

	FUNC4(s, "Protection = 0x%02x (", protect);
	if (protect & DOC_PROTECT_FOUNDRY_OTP_LOCK)
		FUNC5(s, "FOUNDRY_OTP_LOCK,");
	if (protect & DOC_PROTECT_CUSTOMER_OTP_LOCK)
		FUNC5(s, "CUSTOMER_OTP_LOCK,");
	if (protect & DOC_PROTECT_LOCK_INPUT)
		FUNC5(s, "LOCK_INPUT,");
	if (protect & DOC_PROTECT_STICKY_LOCK)
		FUNC5(s, "STICKY_LOCK,");
	if (protect & DOC_PROTECT_PROTECTION_ENABLED)
		FUNC5(s, "PROTECTION ON,");
	if (protect & DOC_PROTECT_IPL_DOWNLOAD_LOCK)
		FUNC5(s, "IPL_DOWNLOAD_LOCK,");
	if (protect & DOC_PROTECT_PROTECTION_ERROR)
		FUNC5(s, "PROTECT_ERR,");
	else
		FUNC5(s, "NO_PROTECT_ERR");
	FUNC5(s, ")\n");

	FUNC4(s, "DPS0 = 0x%02x : Protected area [0x%x - 0x%x] : OTP=%d, READ=%d, WRITE=%d, HW_LOCK=%d, KEY_OK=%d\n",
		   dps0, dps0_low, dps0_high,
		   !!(dps0 & DOC_DPS_OTP_PROTECTED),
		   !!(dps0 & DOC_DPS_READ_PROTECTED),
		   !!(dps0 & DOC_DPS_WRITE_PROTECTED),
		   !!(dps0 & DOC_DPS_HW_LOCK_ENABLED),
		   !!(dps0 & DOC_DPS_KEY_OK));
	FUNC4(s, "DPS1 = 0x%02x : Protected area [0x%x - 0x%x] : OTP=%d, READ=%d, WRITE=%d, HW_LOCK=%d, KEY_OK=%d\n",
		   dps1, dps1_low, dps1_high,
		   !!(dps1 & DOC_DPS_OTP_PROTECTED),
		   !!(dps1 & DOC_DPS_READ_PROTECTED),
		   !!(dps1 & DOC_DPS_WRITE_PROTECTED),
		   !!(dps1 & DOC_DPS_HW_LOCK_ENABLED),
		   !!(dps1 & DOC_DPS_KEY_OK));
	return 0;
}