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
typedef  int u64 ;
typedef  int u16 ;
struct rvu {int dummy; } ;
struct msg_rsp {int dummy; } ;
struct TYPE_2__ {int pcifunc; } ;
struct msg_req {TYPE_1__ hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLKADDR_RVUM ; 
 int RVU_INVALID_VF_ID ; 
 int RVU_PFVF_FUNC_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rvu*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct rvu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct rvu *rvu, struct msg_req *req,
				   struct msg_rsp *rsp)
{
	u16 pcifunc = req->hdr.pcifunc;
	u16 vf, numvfs;
	u64 cfg;

	vf = pcifunc & RVU_PFVF_FUNC_MASK;
	cfg = FUNC3(rvu, BLKADDR_RVUM,
			 FUNC0(FUNC2(pcifunc)));
	numvfs = (cfg >> 12) & 0xFF;

	if (vf && vf <= numvfs)
		FUNC1(rvu, pcifunc);
	else
		return RVU_INVALID_VF_ID;

	return 0;
}