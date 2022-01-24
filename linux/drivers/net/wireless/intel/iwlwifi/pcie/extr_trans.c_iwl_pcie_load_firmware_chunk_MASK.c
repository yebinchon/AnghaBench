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
struct iwl_trans_pcie {int ucode_write_complete; int /*<<< orphan*/  ucode_write_waitq; } ;
struct iwl_trans {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int EIO ; 
 int ETIMEDOUT ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*) ; 
 struct iwl_trans_pcie* FUNC1 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_trans*,unsigned long*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC7(struct iwl_trans *trans,
					u32 dst_addr, dma_addr_t phy_addr,
					u32 byte_cnt)
{
	struct iwl_trans_pcie *trans_pcie = FUNC1(trans);
	unsigned long flags;
	int ret;

	trans_pcie->ucode_write_complete = false;

	if (!FUNC3(trans, &flags))
		return -EIO;

	FUNC2(trans, dst_addr, phy_addr,
					byte_cnt);
	FUNC5(trans, &flags);

	ret = FUNC6(trans_pcie->ucode_write_waitq,
				 trans_pcie->ucode_write_complete, 5 * HZ);
	if (!ret) {
		FUNC0(trans, "Failed to load firmware chunk!\n");
		FUNC4(trans);
		return -ETIMEDOUT;
	}

	return 0;
}