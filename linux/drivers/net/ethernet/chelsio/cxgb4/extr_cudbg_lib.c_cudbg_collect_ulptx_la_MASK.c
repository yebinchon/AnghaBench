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
typedef  size_t u32 ;
struct cudbg_ver_hdr {int size; int /*<<< orphan*/  revision; int /*<<< orphan*/  signature; } ;
struct cudbg_ulptx_la {void*** rddata_asic; void** rdptr_asic; void*** rd_data; void** rddata; void** wrptr; void** rdptr; } ;
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int dummy; } ;
struct cudbg_buffer {scalar_t__ data; int /*<<< orphan*/  member_0; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CUDBG_ENTITY_SIGNATURE ; 
 size_t CUDBG_NUM_ULPTX ; 
 size_t CUDBG_NUM_ULPTX_ASIC_READ ; 
 size_t CUDBG_NUM_ULPTX_READ ; 
 int /*<<< orphan*/  CUDBG_ULPTX_LA_REV ; 
 scalar_t__ PM_RX_BASE_ADDR ; 
 scalar_t__ ULP_TX_ASIC_DEBUG_0_A ; 
 scalar_t__ ULP_TX_ASIC_DEBUG_1_A ; 
 scalar_t__ ULP_TX_ASIC_DEBUG_2_A ; 
 scalar_t__ ULP_TX_ASIC_DEBUG_3_A ; 
 scalar_t__ ULP_TX_ASIC_DEBUG_4_A ; 
 scalar_t__ ULP_TX_ASIC_DEBUG_CTRL_A ; 
 scalar_t__ ULP_TX_LA_RDDATA_0_A ; 
 scalar_t__ ULP_TX_LA_RDPTR_0_A ; 
 scalar_t__ ULP_TX_LA_WRPTR_0_A ; 
 int FUNC0 (struct cudbg_init*,struct cudbg_buffer*,int,struct cudbg_buffer*) ; 
 int FUNC1 (struct cudbg_init*,struct cudbg_buffer*,struct cudbg_buffer*) ; 
 void* FUNC2 (struct adapter*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,scalar_t__,int) ; 

int FUNC4(struct cudbg_init *pdbg_init,
			   struct cudbg_buffer *dbg_buff,
			   struct cudbg_error *cudbg_err)
{
	struct adapter *padap = pdbg_init->adap;
	struct cudbg_buffer temp_buff = { 0 };
	struct cudbg_ulptx_la *ulptx_la_buff;
	struct cudbg_ver_hdr *ver_hdr;
	u32 i, j;
	int rc;

	rc = FUNC0(pdbg_init, dbg_buff,
			    sizeof(struct cudbg_ver_hdr) +
			    sizeof(struct cudbg_ulptx_la),
			    &temp_buff);
	if (rc)
		return rc;

	ver_hdr = (struct cudbg_ver_hdr *)temp_buff.data;
	ver_hdr->signature = CUDBG_ENTITY_SIGNATURE;
	ver_hdr->revision = CUDBG_ULPTX_LA_REV;
	ver_hdr->size = sizeof(struct cudbg_ulptx_la);

	ulptx_la_buff = (struct cudbg_ulptx_la *)(temp_buff.data +
						  sizeof(*ver_hdr));
	for (i = 0; i < CUDBG_NUM_ULPTX; i++) {
		ulptx_la_buff->rdptr[i] = FUNC2(padap,
						      ULP_TX_LA_RDPTR_0_A +
						      0x10 * i);
		ulptx_la_buff->wrptr[i] = FUNC2(padap,
						      ULP_TX_LA_WRPTR_0_A +
						      0x10 * i);
		ulptx_la_buff->rddata[i] = FUNC2(padap,
						       ULP_TX_LA_RDDATA_0_A +
						       0x10 * i);
		for (j = 0; j < CUDBG_NUM_ULPTX_READ; j++)
			ulptx_la_buff->rd_data[i][j] =
				FUNC2(padap,
					    ULP_TX_LA_RDDATA_0_A + 0x10 * i);
	}

	for (i = 0; i < CUDBG_NUM_ULPTX_ASIC_READ; i++) {
		FUNC3(padap, ULP_TX_ASIC_DEBUG_CTRL_A, 0x1);
		ulptx_la_buff->rdptr_asic[i] =
				FUNC2(padap, ULP_TX_ASIC_DEBUG_CTRL_A);
		ulptx_la_buff->rddata_asic[i][0] =
				FUNC2(padap, ULP_TX_ASIC_DEBUG_0_A);
		ulptx_la_buff->rddata_asic[i][1] =
				FUNC2(padap, ULP_TX_ASIC_DEBUG_1_A);
		ulptx_la_buff->rddata_asic[i][2] =
				FUNC2(padap, ULP_TX_ASIC_DEBUG_2_A);
		ulptx_la_buff->rddata_asic[i][3] =
				FUNC2(padap, ULP_TX_ASIC_DEBUG_3_A);
		ulptx_la_buff->rddata_asic[i][4] =
				FUNC2(padap, ULP_TX_ASIC_DEBUG_4_A);
		ulptx_la_buff->rddata_asic[i][5] =
				FUNC2(padap, PM_RX_BASE_ADDR);
	}

	return FUNC1(pdbg_init, &temp_buff, dbg_buff);
}