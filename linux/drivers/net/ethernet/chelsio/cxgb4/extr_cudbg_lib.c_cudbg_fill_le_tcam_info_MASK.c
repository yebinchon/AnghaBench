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
typedef  int u32 ;
struct cudbg_tcam {int tid_hash_base; int routing_start; int clip_start; int filter_start; int server_start; int max_tid; } ;
struct TYPE_2__ {int /*<<< orphan*/  chip; } ;
struct adapter {TYPE_1__ params; } ;

/* Variables and functions */
 int ASLIPCOMPEN_F ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CHELSIO_T5 ; 
 int CUDBG_MAX_TCAM_TID ; 
 int CUDBG_MAX_TID_COMP_DIS ; 
 int CUDBG_MAX_TID_COMP_EN ; 
 int CUDBG_T6_CLIP ; 
 int HASHEN_S ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  LE_DB_CLCAM_TID_BASE_A ; 
 int /*<<< orphan*/  LE_DB_CLIP_TABLE_INDEX_A ; 
 int /*<<< orphan*/  LE_DB_CONFIG_A ; 
 int /*<<< orphan*/  LE_DB_FILTER_TABLE_INDEX_A ; 
 int /*<<< orphan*/  LE_DB_HASH_CONFIG_A ; 
 int /*<<< orphan*/  LE_DB_ROUTING_TABLE_INDEX_A ; 
 int /*<<< orphan*/  LE_DB_SERVER_INDEX_A ; 
 int /*<<< orphan*/  LE_DB_TID_HASHBASE_A ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct adapter*,int /*<<< orphan*/ ) ; 

void FUNC4(struct adapter *padap,
			     struct cudbg_tcam *tcam_region)
{
	u32 value;

	/* Get the LE regions */
	value = FUNC3(padap, LE_DB_TID_HASHBASE_A); /* hash base index */
	tcam_region->tid_hash_base = value;

	/* Get routing table index */
	value = FUNC3(padap, LE_DB_ROUTING_TABLE_INDEX_A);
	tcam_region->routing_start = value;

	/* Get clip table index. For T6 there is separate CLIP TCAM */
	if (FUNC2(padap->params.chip))
		value = FUNC3(padap, LE_DB_CLCAM_TID_BASE_A);
	else
		value = FUNC3(padap, LE_DB_CLIP_TABLE_INDEX_A);
	tcam_region->clip_start = value;

	/* Get filter table index */
	value = FUNC3(padap, LE_DB_FILTER_TABLE_INDEX_A);
	tcam_region->filter_start = value;

	/* Get server table index */
	value = FUNC3(padap, LE_DB_SERVER_INDEX_A);
	tcam_region->server_start = value;

	/* Check whether hash is enabled and calculate the max tids */
	value = FUNC3(padap, LE_DB_CONFIG_A);
	if ((value >> HASHEN_S) & 1) {
		value = FUNC3(padap, LE_DB_HASH_CONFIG_A);
		if (FUNC0(padap->params.chip) > CHELSIO_T5) {
			tcam_region->max_tid = (value & 0xFFFFF) +
					       tcam_region->tid_hash_base;
		} else {
			value = FUNC1(value);
			value = 1 << value;
			tcam_region->max_tid = value +
					       tcam_region->tid_hash_base;
		}
	} else { /* hash not enabled */
		if (FUNC2(padap->params.chip))
			tcam_region->max_tid = (value & ASLIPCOMPEN_F) ?
					       CUDBG_MAX_TID_COMP_EN :
					       CUDBG_MAX_TID_COMP_DIS;
		else
			tcam_region->max_tid = CUDBG_MAX_TCAM_TID;
	}

	if (FUNC2(padap->params.chip))
		tcam_region->max_tid += CUDBG_T6_CLIP;
}