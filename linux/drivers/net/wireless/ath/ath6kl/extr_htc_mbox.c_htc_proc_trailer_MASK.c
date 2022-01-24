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
struct htc_record_hdr {int len; int /*<<< orphan*/  rec_id; } ;
typedef  enum htc_endpoint_id { ____Placeholder_htc_endpoint_id } htc_endpoint_id ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_HTC ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct htc_target*,struct htc_record_hdr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int*) ; 

__attribute__((used)) static int FUNC4(struct htc_target *target,
			    u8 *buf, int len, u32 *next_lk_ahds,
			    int *n_lk_ahds, enum htc_endpoint_id endpoint)
{
	struct htc_record_hdr *record;
	int orig_len;
	int status;
	u8 *record_buf;
	u8 *orig_buf;

	FUNC0(ATH6KL_DBG_HTC, "htc rx trailer len %d\n", len);
	FUNC1(ATH6KL_DBG_HTC, NULL, "", buf, len);

	orig_buf = buf;
	orig_len = len;
	status = 0;

	while (len > 0) {
		if (len < sizeof(struct htc_record_hdr)) {
			status = -ENOMEM;
			break;
		}
		/* these are byte aligned structs */
		record = (struct htc_record_hdr *) buf;
		len -= sizeof(struct htc_record_hdr);
		buf += sizeof(struct htc_record_hdr);

		if (record->len > len) {
			FUNC2("invalid record len: %d (id:%d) buf has: %d bytes left\n",
				   record->len, record->rec_id, len);
			status = -ENOMEM;
			break;
		}
		record_buf = buf;

		status = FUNC3(target, record, record_buf,
					   next_lk_ahds, endpoint, n_lk_ahds);

		if (status)
			break;

		/* advance buffer past this record for next time around */
		buf += record->len;
		len -= record->len;
	}

	if (status)
		FUNC1(ATH6KL_DBG_HTC, "htc rx bad trailer",
				"", orig_buf, orig_len);

	return status;
}