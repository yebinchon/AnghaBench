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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct htc_target {int dummy; } ;
struct htc_record_hdr {int rec_id; int len; } ;
struct htc_lookahead_report {int pre_valid; int post_valid; int /*<<< orphan*/  lk_ahd; } ;
struct htc_credit_report {int dummy; } ;
struct htc_bundle_lkahd_rpt {int /*<<< orphan*/  lk_ahd; } ;
typedef  enum htc_endpoint_id { ____Placeholder_htc_endpoint_id } htc_endpoint_id ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_HTC ; 
 int EINVAL ; 
 int HTC_HOST_MAX_MSG_PER_BUNDLE ; 
#define  HTC_RECORD_CREDITS 130 
#define  HTC_RECORD_LOOKAHEAD 129 
#define  HTC_RECORD_LOOKAHEAD_BUNDLE 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct htc_target*,struct htc_credit_report*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct htc_target *target,
			     struct htc_record_hdr *record,
			     u8 *record_buf, u32 *next_lk_ahds,
			     enum htc_endpoint_id endpoint,
			     int *n_lk_ahds)
{
	struct htc_bundle_lkahd_rpt *bundle_lkahd_rpt;
	struct htc_lookahead_report *lk_ahd;
	int len;

	switch (record->rec_id) {
	case HTC_RECORD_CREDITS:
		len = record->len / sizeof(struct htc_credit_report);
		if (!len) {
			FUNC0(1);
			return -EINVAL;
		}

		FUNC4(target,
				  (struct htc_credit_report *) record_buf,
				  len, endpoint);
		break;
	case HTC_RECORD_LOOKAHEAD:
		len = record->len / sizeof(*lk_ahd);
		if (!len) {
			FUNC0(1);
			return -EINVAL;
		}

		lk_ahd = (struct htc_lookahead_report *) record_buf;
		if ((lk_ahd->pre_valid == ((~lk_ahd->post_valid) & 0xFF)) &&
		    next_lk_ahds) {
			FUNC1(ATH6KL_DBG_HTC,
				   "htc rx lk_ahd found pre_valid 0x%x post_valid 0x%x\n",
				   lk_ahd->pre_valid, lk_ahd->post_valid);

			/* look ahead bytes are valid, copy them over */
			FUNC5((u8 *)&next_lk_ahds[0], lk_ahd->lk_ahd, 4);

			FUNC2(ATH6KL_DBG_HTC,
					"htc rx next look ahead",
					"", next_lk_ahds, 4);

			*n_lk_ahds = 1;
		}
		break;
	case HTC_RECORD_LOOKAHEAD_BUNDLE:
		len = record->len / sizeof(*bundle_lkahd_rpt);
		if (!len || (len > HTC_HOST_MAX_MSG_PER_BUNDLE)) {
			FUNC0(1);
			return -EINVAL;
		}

		if (next_lk_ahds) {
			int i;

			bundle_lkahd_rpt =
				(struct htc_bundle_lkahd_rpt *) record_buf;

			FUNC2(ATH6KL_DBG_HTC, "htc rx bundle lk_ahd",
					"", record_buf, record->len);

			for (i = 0; i < len; i++) {
				FUNC5((u8 *)&next_lk_ahds[i],
				       bundle_lkahd_rpt->lk_ahd, 4);
				bundle_lkahd_rpt++;
			}

			*n_lk_ahds = i;
		}
		break;
	default:
		FUNC3("unhandled record: id:%d len:%d\n",
			   record->rec_id, record->len);
		break;
	}

	return 0;
}