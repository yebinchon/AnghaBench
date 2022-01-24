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
struct mtd_info {struct efx_nic* priv; } ;
struct efx_nic {TYPE_1__* type; } ;
struct efx_mtd_partition {int /*<<< orphan*/  dev_type_name; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int (* mtd_sync ) (struct mtd_info*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct mtd_info*) ; 
 struct efx_mtd_partition* FUNC2 (struct mtd_info*) ; 

__attribute__((used)) static void FUNC3(struct mtd_info *mtd)
{
	struct efx_mtd_partition *part = FUNC2(mtd);
	struct efx_nic *efx = mtd->priv;
	int rc;

	rc = efx->type->mtd_sync(mtd);
	if (rc)
		FUNC0("%s: %s sync failed (%d)\n",
		       part->name, part->dev_type_name, rc);
}