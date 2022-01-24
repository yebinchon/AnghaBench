#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct ena_com_dev {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  intr_delay_resolution; } ;
struct TYPE_4__ {TYPE_1__ intr_moderation; } ;
struct ena_admin_get_feat_resp {TYPE_2__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENA_ADMIN_INTERRUPT_MODERATION ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct ena_com_dev*) ; 
 int FUNC1 (struct ena_com_dev*,struct ena_admin_get_feat_resp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ena_com_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

int FUNC5(struct ena_com_dev *ena_dev)
{
	struct ena_admin_get_feat_resp get_resp;
	u16 delay_resolution;
	int rc;

	rc = FUNC1(ena_dev, &get_resp,
				 ENA_ADMIN_INTERRUPT_MODERATION, 0);

	if (rc) {
		if (rc == -EOPNOTSUPP) {
			FUNC3("Feature %d isn't supported\n",
				 ENA_ADMIN_INTERRUPT_MODERATION);
			rc = 0;
		} else {
			FUNC4("Failed to get interrupt moderation admin cmd. rc: %d\n",
			       rc);
		}

		/* no moderation supported, disable adaptive support */
		FUNC0(ena_dev);
		return rc;
	}

	/* if moderation is supported by device we set adaptive moderation */
	delay_resolution = get_resp.u.intr_moderation.intr_delay_resolution;
	FUNC2(ena_dev, delay_resolution);

	/* Disable adaptive moderation by default - can be enabled later */
	FUNC0(ena_dev);

	return 0;
}