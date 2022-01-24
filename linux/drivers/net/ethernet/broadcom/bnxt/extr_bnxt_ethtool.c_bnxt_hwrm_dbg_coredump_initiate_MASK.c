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
typedef  int /*<<< orphan*/  u16 ;
struct hwrm_dbg_coredump_initiate_input {void* segment_id; void* component_id; int /*<<< orphan*/  member_0; } ;
struct bnxt {int dummy; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  HWRM_COREDUMP_TIMEOUT ; 
 int /*<<< orphan*/  HWRM_DBG_COREDUMP_INITIATE ; 
 int /*<<< orphan*/  FUNC0 (struct bnxt*,struct hwrm_dbg_coredump_initiate_input*,int /*<<< orphan*/ ,int,int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bnxt*,struct hwrm_dbg_coredump_initiate_input*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct bnxt *bp, u16 component_id,
					   u16 segment_id)
{
	struct hwrm_dbg_coredump_initiate_input req = {0};

	FUNC0(bp, &req, HWRM_DBG_COREDUMP_INITIATE, -1, -1);
	req.component_id = FUNC1(component_id);
	req.segment_id = FUNC1(segment_id);

	return FUNC2(bp, &req, sizeof(req), HWRM_COREDUMP_TIMEOUT);
}