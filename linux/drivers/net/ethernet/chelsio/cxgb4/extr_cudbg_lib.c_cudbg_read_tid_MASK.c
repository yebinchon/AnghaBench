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
struct cudbg_tid_data {int dbig_cmd; int dbig_conf; int dbig_rsp_stat; int tid; void** data; } ;
struct cudbg_init {struct adapter* adap; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int CUDBG_SYSTEM_ERROR ; 
 int DBGICMDBUSY_F ; 
 int FUNC0 (int) ; 
 int DBGICMDSTRT_F ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 scalar_t__ LE_DB_DBGI_CONFIG_A ; 
 scalar_t__ LE_DB_DBGI_REQ_DATA_A ; 
 scalar_t__ LE_DB_DBGI_REQ_TCAM_CMD_A ; 
 scalar_t__ LE_DB_DBGI_RSP_DATA_A ; 
 scalar_t__ LE_DB_DBGI_RSP_STATUS_A ; 
 int NUM_LE_DB_DBGI_REQ_DATA_INSTANCES ; 
 int NUM_LE_DB_DBGI_RSP_DATA_INSTANCES ; 
 void* FUNC3 (struct adapter*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,scalar_t__,int) ; 

__attribute__((used)) static int FUNC5(struct cudbg_init *pdbg_init, u32 tid,
			  struct cudbg_tid_data *tid_data)
{
	struct adapter *padap = pdbg_init->adap;
	int i, cmd_retry = 8;
	u32 val;

	/* Fill REQ_DATA regs with 0's */
	for (i = 0; i < NUM_LE_DB_DBGI_REQ_DATA_INSTANCES; i++)
		FUNC4(padap, LE_DB_DBGI_REQ_DATA_A + (i << 2), 0);

	/* Write DBIG command */
	val = FUNC1(4) | FUNC2(tid);
	FUNC4(padap, LE_DB_DBGI_REQ_TCAM_CMD_A, val);
	tid_data->dbig_cmd = val;

	val = DBGICMDSTRT_F | FUNC0(1); /* LE mode */
	FUNC4(padap, LE_DB_DBGI_CONFIG_A, val);
	tid_data->dbig_conf = val;

	/* Poll the DBGICMDBUSY bit */
	val = 1;
	while (val) {
		val = FUNC3(padap, LE_DB_DBGI_CONFIG_A);
		val = val & DBGICMDBUSY_F;
		cmd_retry--;
		if (!cmd_retry)
			return CUDBG_SYSTEM_ERROR;
	}

	/* Check RESP status */
	val = FUNC3(padap, LE_DB_DBGI_RSP_STATUS_A);
	tid_data->dbig_rsp_stat = val;
	if (!(val & 1))
		return CUDBG_SYSTEM_ERROR;

	/* Read RESP data */
	for (i = 0; i < NUM_LE_DB_DBGI_RSP_DATA_INSTANCES; i++)
		tid_data->data[i] = FUNC3(padap,
						LE_DB_DBGI_RSP_DATA_A +
						(i << 2));
	tid_data->tid = tid;
	return 0;
}