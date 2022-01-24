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
typedef  int u8 ;
typedef  size_t u16 ;
struct qede_dev {int* rss_ind_table; int rss_params_inited; int rss_caps; int /*<<< orphan*/  rss_key; TYPE_2__* fp_array; } ;
struct qed_update_vport_rss_params {int rss_caps; int /*<<< orphan*/  rss_key; int /*<<< orphan*/ * rss_ind_table; } ;
struct TYPE_4__ {TYPE_1__* rxq; } ;
struct TYPE_3__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int QEDE_RSS_CAPS_INITED ; 
 int FUNC0 (struct qede_dev*) ; 
 int QEDE_RSS_INDIR_INITED ; 
 int QEDE_RSS_KEY_INITED ; 
 size_t FUNC1 (struct qede_dev*,size_t) ; 
 int QED_RSS_IND_TABLE_SIZE ; 
 int QED_RSS_IPV4 ; 
 int QED_RSS_IPV4_TCP ; 
 int QED_RSS_IPV6 ; 
 int QED_RSS_IPV6_TCP ; 
 size_t FUNC2 (int,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct qed_update_vport_rss_params*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

void FUNC6(struct qede_dev *edev,
			  struct qed_update_vport_rss_params *rss, u8 *update)
{
	bool need_reset = false;
	int i;

	if (FUNC0(edev) <= 1) {
		FUNC4(rss, 0, sizeof(*rss));
		*update = 0;
		return;
	}

	/* Need to validate current RSS config uses valid entries */
	for (i = 0; i < QED_RSS_IND_TABLE_SIZE; i++) {
		if (edev->rss_ind_table[i] >= FUNC0(edev)) {
			need_reset = true;
			break;
		}
	}

	if (!(edev->rss_params_inited & QEDE_RSS_INDIR_INITED) || need_reset) {
		for (i = 0; i < QED_RSS_IND_TABLE_SIZE; i++) {
			u16 indir_val, val;

			val = FUNC0(edev);
			indir_val = FUNC2(i, val);
			edev->rss_ind_table[i] = indir_val;
		}
		edev->rss_params_inited |= QEDE_RSS_INDIR_INITED;
	}

	/* Now that we have the queue-indirection, prepare the handles */
	for (i = 0; i < QED_RSS_IND_TABLE_SIZE; i++) {
		u16 idx = FUNC1(edev, edev->rss_ind_table[i]);

		rss->rss_ind_table[i] = edev->fp_array[idx].rxq->handle;
	}

	if (!(edev->rss_params_inited & QEDE_RSS_KEY_INITED)) {
		FUNC5(edev->rss_key, sizeof(edev->rss_key));
		edev->rss_params_inited |= QEDE_RSS_KEY_INITED;
	}
	FUNC3(rss->rss_key, edev->rss_key, sizeof(rss->rss_key));

	if (!(edev->rss_params_inited & QEDE_RSS_CAPS_INITED)) {
		edev->rss_caps = QED_RSS_IPV4 | QED_RSS_IPV6 |
		    QED_RSS_IPV4_TCP | QED_RSS_IPV6_TCP;
		edev->rss_params_inited |= QEDE_RSS_CAPS_INITED;
	}
	rss->rss_caps = edev->rss_caps;

	*update = 1;
}