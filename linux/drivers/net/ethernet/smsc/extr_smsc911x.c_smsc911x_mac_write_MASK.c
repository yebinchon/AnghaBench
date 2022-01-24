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
typedef  unsigned int u32 ;
struct smsc911x_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BYTE_TEST ; 
 int /*<<< orphan*/  MAC_CSR_CMD ; 
 unsigned int MAC_CSR_CMD_CSR_BUSY_ ; 
 int /*<<< orphan*/  MAC_CSR_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct smsc911x_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct smsc911x_data*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  hw ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct smsc911x_data*) ; 
 unsigned int FUNC4 (struct smsc911x_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct smsc911x_data*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC6 (unsigned int) ; 

__attribute__((used)) static void FUNC7(struct smsc911x_data *pdata,
			       unsigned int offset, u32 val)
{
	unsigned int temp;

	FUNC0(pdata);

	temp = FUNC4(pdata, MAC_CSR_CMD);
	if (FUNC6(temp & MAC_CSR_CMD_CSR_BUSY_)) {
		FUNC1(pdata, hw,
			  "smsc911x_mac_write failed, MAC busy at entry");
		return;
	}

	/* Send data to write */
	FUNC5(pdata, MAC_CSR_DATA, val);

	/* Write the actual data */
	FUNC5(pdata, MAC_CSR_CMD, ((offset & 0xFF) |
		MAC_CSR_CMD_CSR_BUSY_));

	/* Workaround for hardware read-after-write restriction */
	temp = FUNC4(pdata, BYTE_TEST);

	/* Wait for the write to complete */
	if (FUNC2(FUNC3(pdata) == 0))
		return;

	FUNC1(pdata, hw, "smsc911x_mac_write failed, MAC busy after write");
}