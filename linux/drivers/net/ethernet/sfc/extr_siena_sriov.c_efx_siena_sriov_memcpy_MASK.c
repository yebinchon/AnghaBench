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
typedef  unsigned int u64 ;
typedef  unsigned int u32 ;
struct efx_nic {int dummy; } ;
struct efx_memcpy_req {unsigned int to_rid; unsigned int to_addr; unsigned int from_rid; unsigned int from_addr; scalar_t__ length; int /*<<< orphan*/ * from_buf; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ MCDI_CTL_SDU_LEN_MAX_V1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  MC_CMD_MEMCPY ; 
 unsigned int FUNC5 (unsigned int) ; 
 unsigned int MC_CMD_MEMCPY_IN_RECORD_MAXNUM ; 
 unsigned int MC_CMD_MEMCPY_RECORD_TYPEDEF_RID_INLINE ; 
 int /*<<< orphan*/  MEMCPY_IN_RECORD ; 
 int /*<<< orphan*/  MEMCPY_RECORD_TYPEDEF_FROM_ADDR ; 
 int /*<<< orphan*/  MEMCPY_RECORD_TYPEDEF_FROM_RID ; 
 int /*<<< orphan*/  MEMCPY_RECORD_TYPEDEF_LENGTH ; 
 int /*<<< orphan*/  MEMCPY_RECORD_TYPEDEF_NUM_RECORDS ; 
 int /*<<< orphan*/  MEMCPY_RECORD_TYPEDEF_TO_ADDR ; 
 int /*<<< orphan*/  MEMCPY_RECORD_TYPEDEF_TO_RID ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC8 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  inbuf ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  record ; 

__attribute__((used)) static int FUNC11(struct efx_nic *efx,
				  struct efx_memcpy_req *req,
				  unsigned int count)
{
	FUNC1(inbuf, MCDI_CTL_SDU_LEN_MAX_V1);
	FUNC2(record);
	unsigned int index, used;
	u64 from_addr;
	u32 from_rid;
	int rc;

	FUNC9();	/* Finish writing source/reading dest before DMA starts */

	if (FUNC6(count > MC_CMD_MEMCPY_IN_RECORD_MAXNUM))
		return -ENOBUFS;
	used = FUNC5(count);

	for (index = 0; index < count; index++) {
		record = FUNC0(inbuf, MEMCPY_IN_RECORD, index);
		FUNC3(record, MEMCPY_RECORD_TYPEDEF_NUM_RECORDS,
			       count);
		FUNC3(record, MEMCPY_RECORD_TYPEDEF_TO_RID,
			       req->to_rid);
		FUNC4(record, MEMCPY_RECORD_TYPEDEF_TO_ADDR,
			       req->to_addr);
		if (req->from_buf == NULL) {
			from_rid = req->from_rid;
			from_addr = req->from_addr;
		} else {
			if (FUNC6(used + req->length >
				    MCDI_CTL_SDU_LEN_MAX_V1)) {
				rc = -ENOBUFS;
				goto out;
			}

			from_rid = MC_CMD_MEMCPY_RECORD_TYPEDEF_RID_INLINE;
			from_addr = used;
			FUNC10(FUNC7(inbuf, used), req->from_buf,
			       req->length);
			used += req->length;
		}

		FUNC3(record, MEMCPY_RECORD_TYPEDEF_FROM_RID, from_rid);
		FUNC4(record, MEMCPY_RECORD_TYPEDEF_FROM_ADDR,
			       from_addr);
		FUNC3(record, MEMCPY_RECORD_TYPEDEF_LENGTH,
			       req->length);

		++req;
	}

	rc = FUNC8(efx, MC_CMD_MEMCPY, inbuf, used, NULL, 0, NULL);
out:
	FUNC9();	/* Don't write source/read dest before DMA is complete */

	return rc;
}