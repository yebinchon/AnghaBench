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
struct mc5 {struct adapter* adapter; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_MC5_DB_ACK_LRN_CMD ; 
 int /*<<< orphan*/  A_MC5_DB_ACK_SRCH_CMD ; 
 int /*<<< orphan*/  A_MC5_DB_AOPEN_LRN_CMD ; 
 int /*<<< orphan*/  A_MC5_DB_AOPEN_SRCH_CMD ; 
 int /*<<< orphan*/  A_MC5_DB_DATA_READ_CMD ; 
 int /*<<< orphan*/  A_MC5_DB_DATA_WRITE_CMD ; 
 int /*<<< orphan*/  A_MC5_DB_DBGI_CONFIG ; 
 int /*<<< orphan*/  A_MC5_DB_ELOOKUP_CMD ; 
 int /*<<< orphan*/  A_MC5_DB_ILOOKUP_CMD ; 
 int /*<<< orphan*/  A_MC5_DB_PART_ID_INDEX ; 
 int /*<<< orphan*/  A_MC5_DB_POPEN_DATA_WR_CMD ; 
 int /*<<< orphan*/  A_MC5_DB_POPEN_MASK_WR_CMD ; 
 int /*<<< orphan*/  A_MC5_DB_RSP_LATENCY ; 
 int /*<<< orphan*/  A_MC5_DB_SYN_LRN_CMD ; 
 int /*<<< orphan*/  A_MC5_DB_SYN_SRCH_CMD ; 
 int DBGI_MODE_IDT52100 ; 
 int EIO ; 
 int IDT_CMD_LEARN ; 
 int IDT_CMD_READ ; 
 int IDT_CMD_SEARCH ; 
 int IDT_CMD_WRITE ; 
 int /*<<< orphan*/  IDT_DATARY_BASE_ADR0 ; 
 scalar_t__ IDT_GMR_BASE_ADR0 ; 
 scalar_t__ IDT_LAR_ADR0 ; 
 int IDT_LAR_MODE144 ; 
 int /*<<< orphan*/  IDT_MSKARY_BASE_ADR0 ; 
 scalar_t__ IDT_SCR_ADR0 ; 
 scalar_t__ IDT_SSR0_ADR0 ; 
 scalar_t__ IDT_SSR1_ADR0 ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int,int,int) ; 
 int FUNC4 (struct mc5*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct adapter*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct mc5 *mc5)
{
	int i;
	struct adapter *adap = mc5->adapter;

	FUNC6(adap, A_MC5_DB_RSP_LATENCY,
		     FUNC1(0x15) | FUNC0(0x15) | FUNC2(0x15));
	FUNC6(adap, A_MC5_DB_PART_ID_INDEX, 2);

	/*
	 * Use GMRs 14-15 for ELOOKUP, GMRs 12-13 for SYN lookups, and
	 * GMRs 8-9 for ACK- and AOPEN searches.
	 */
	FUNC6(adap, A_MC5_DB_POPEN_DATA_WR_CMD, IDT_CMD_WRITE);
	FUNC6(adap, A_MC5_DB_POPEN_MASK_WR_CMD, IDT_CMD_WRITE);
	FUNC6(adap, A_MC5_DB_AOPEN_SRCH_CMD, IDT_CMD_SEARCH);
	FUNC6(adap, A_MC5_DB_AOPEN_LRN_CMD, IDT_CMD_LEARN);
	FUNC6(adap, A_MC5_DB_SYN_SRCH_CMD, IDT_CMD_SEARCH | 0x6000);
	FUNC6(adap, A_MC5_DB_SYN_LRN_CMD, IDT_CMD_LEARN);
	FUNC6(adap, A_MC5_DB_ACK_SRCH_CMD, IDT_CMD_SEARCH);
	FUNC6(adap, A_MC5_DB_ACK_LRN_CMD, IDT_CMD_LEARN);
	FUNC6(adap, A_MC5_DB_ILOOKUP_CMD, IDT_CMD_SEARCH);
	FUNC6(adap, A_MC5_DB_ELOOKUP_CMD, IDT_CMD_SEARCH | 0x7000);
	FUNC6(adap, A_MC5_DB_DATA_WRITE_CMD, IDT_CMD_WRITE);
	FUNC6(adap, A_MC5_DB_DATA_READ_CMD, IDT_CMD_READ);

	/* Set DBGI command mode for IDT TCAM. */
	FUNC6(adap, A_MC5_DB_DBGI_CONFIG, DBGI_MODE_IDT52100);

	/* Set up LAR */
	FUNC3(adap, IDT_LAR_MODE144, 0, 0);
	if (FUNC5(adap, IDT_LAR_ADR0, IDT_CMD_WRITE))
		goto err;

	/* Set up SSRs */
	FUNC3(adap, 0xffffffff, 0xffffffff, 0);
	if (FUNC5(adap, IDT_SSR0_ADR0, IDT_CMD_WRITE) ||
	    FUNC5(adap, IDT_SSR1_ADR0, IDT_CMD_WRITE))
		goto err;

	/* Set up GMRs */
	for (i = 0; i < 32; ++i) {
		if (i >= 12 && i < 15)
			FUNC3(adap, 0xfffffff9, 0xffffffff, 0xff);
		else if (i == 15)
			FUNC3(adap, 0xfffffff9, 0xffff8007, 0xff);
		else
			FUNC3(adap, 0xffffffff, 0xffffffff, 0xff);

		if (FUNC5(adap, IDT_GMR_BASE_ADR0 + i, IDT_CMD_WRITE))
			goto err;
	}

	/* Set up SCR */
	FUNC3(adap, 1, 0, 0);
	if (FUNC5(adap, IDT_SCR_ADR0, IDT_CMD_WRITE))
		goto err;

	return FUNC4(mc5, IDT_MSKARY_BASE_ADR0,
				    IDT_DATARY_BASE_ADR0, IDT_CMD_WRITE, 0);
err:
	return -EIO;
}