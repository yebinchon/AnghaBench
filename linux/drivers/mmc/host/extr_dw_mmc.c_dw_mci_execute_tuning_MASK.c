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
struct dw_mci_slot {struct dw_mci* host; } ;
struct dw_mci_drv_data {int (* execute_tuning ) (struct dw_mci_slot*,int /*<<< orphan*/ ) ;} ;
struct dw_mci {struct dw_mci_drv_data* drv_data; } ;

/* Variables and functions */
 int EINVAL ; 
 struct dw_mci_slot* FUNC0 (struct mmc_host*) ; 
 int FUNC1 (struct dw_mci_slot*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct mmc_host *mmc, u32 opcode)
{
	struct dw_mci_slot *slot = FUNC0(mmc);
	struct dw_mci *host = slot->host;
	const struct dw_mci_drv_data *drv_data = host->drv_data;
	int err = -EINVAL;

	if (drv_data && drv_data->execute_tuning)
		err = drv_data->execute_tuning(slot, opcode);
	return err;
}