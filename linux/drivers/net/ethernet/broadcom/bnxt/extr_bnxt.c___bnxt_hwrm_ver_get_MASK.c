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
struct hwrm_ver_get_input {int /*<<< orphan*/  hwrm_intf_upd; int /*<<< orphan*/  hwrm_intf_min; int /*<<< orphan*/  hwrm_intf_maj; int /*<<< orphan*/  member_0; } ;
struct bnxt {int dummy; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  HWRM_CMD_TIMEOUT ; 
 int /*<<< orphan*/  HWRM_VERSION_MAJOR ; 
 int /*<<< orphan*/  HWRM_VERSION_MINOR ; 
 int /*<<< orphan*/  HWRM_VERSION_UPDATE ; 
 int /*<<< orphan*/  HWRM_VER_GET ; 
 int /*<<< orphan*/  FUNC0 (struct bnxt*,struct hwrm_ver_get_input*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (struct bnxt*,struct hwrm_ver_get_input*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct bnxt *bp, bool silent)
{
	struct hwrm_ver_get_input req = {0};
	int rc;

	FUNC0(bp, &req, HWRM_VER_GET, -1, -1);
	req.hwrm_intf_maj = HWRM_VERSION_MAJOR;
	req.hwrm_intf_min = HWRM_VERSION_MINOR;
	req.hwrm_intf_upd = HWRM_VERSION_UPDATE;

	rc = FUNC1(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT,
				   silent);
	return rc;
}