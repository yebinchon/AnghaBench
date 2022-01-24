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
struct mmc_host {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MMC_SEND_CID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct mmc_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(struct mmc_host *host, u32 *cid)
{
	int ret, i;
	__be32 *cid_tmp;

	cid_tmp = FUNC2(16, GFP_KERNEL);
	if (!cid_tmp)
		return -ENOMEM;

	ret = FUNC3(NULL, host, MMC_SEND_CID, cid_tmp, 16);
	if (ret)
		goto err;

	for (i = 0; i < 4; i++)
		cid[i] = FUNC0(cid_tmp[i]);

err:
	FUNC1(cid_tmp);
	return ret;
}