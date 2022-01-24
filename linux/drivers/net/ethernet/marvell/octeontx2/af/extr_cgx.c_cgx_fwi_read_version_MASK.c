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
typedef  int /*<<< orphan*/  u64 ;
struct cgx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CGX_CMD_GET_FW_VER ; 
 int /*<<< orphan*/  CMDREG_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct cgx*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(u64 *resp, struct cgx *cgx)
{
	u64 req = 0;

	req = FUNC0(CMDREG_ID, CGX_CMD_GET_FW_VER, req);
	return FUNC1(req, resp, cgx, 0);
}