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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct hwrm_nvm_get_dir_info_output {int /*<<< orphan*/  entry_length; int /*<<< orphan*/  entries; } ;
struct hwrm_nvm_get_dir_info_input {int /*<<< orphan*/  member_0; } ;
struct bnxt {int /*<<< orphan*/  hwrm_cmd_lock; struct hwrm_nvm_get_dir_info_output* hwrm_cmd_resp_addr; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  HWRM_CMD_TIMEOUT ; 
 int /*<<< orphan*/  HWRM_NVM_GET_DIR_INFO ; 
 int FUNC0 (struct bnxt*,struct hwrm_nvm_get_dir_info_input*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*,struct hwrm_nvm_get_dir_info_input*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct bnxt* FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, u32 *entries, u32 *length)
{
	struct bnxt *bp = FUNC5(dev);
	int rc;
	struct hwrm_nvm_get_dir_info_input req = {0};
	struct hwrm_nvm_get_dir_info_output *output = bp->hwrm_cmd_resp_addr;

	FUNC1(bp, &req, HWRM_NVM_GET_DIR_INFO, -1, -1);

	FUNC3(&bp->hwrm_cmd_lock);
	rc = FUNC0(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
	if (!rc) {
		*entries = FUNC2(output->entries);
		*length = FUNC2(output->entry_length);
	}
	FUNC4(&bp->hwrm_cmd_lock);
	return rc;
}