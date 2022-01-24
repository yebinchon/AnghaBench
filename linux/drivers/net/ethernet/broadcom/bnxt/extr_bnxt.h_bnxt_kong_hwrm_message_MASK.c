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
struct input {int /*<<< orphan*/  req_type; } ;
struct bnxt {int fw_cap; } ;

/* Variables and functions */
 int BNXT_FW_CAP_KONG_MB_CHNL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC2(struct bnxt *bp, struct input *req)
{
	return (bp->fw_cap & BNXT_FW_CAP_KONG_MB_CHNL &&
		FUNC0(FUNC1(req->req_type)));
}