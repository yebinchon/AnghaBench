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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int u16 ;
typedef  int /*<<< orphan*/  time64_t ;
struct hwrm_ver_get_output {int dummy; } ;
struct coredump_segment_record {int /*<<< orphan*/  segment_id; int /*<<< orphan*/  component_id; } ;
struct bnxt_coredump_segment_hdr {int dummy; } ;
struct bnxt_coredump_record {int dummy; } ;
struct bnxt_coredump {int total_segs; scalar_t__ data; int /*<<< orphan*/ * member_0; } ;
struct bnxt {int /*<<< orphan*/  dev; struct bnxt_coredump_segment_hdr ver_resp; } ;
typedef  int /*<<< orphan*/  seg_hdr ;
struct TYPE_2__ {int tz_minuteswest; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnxt*,void*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*,struct bnxt_coredump_segment_hdr*,struct coredump_segment_record*,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bnxt*,int,int) ; 
 int FUNC3 (struct bnxt*,struct bnxt_coredump*) ; 
 int FUNC4 (struct bnxt*,int,int,int*,void*,int) ; 
 unsigned long jiffies ; 
 int FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*,struct bnxt_coredump_segment_hdr*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__ sys_tz ; 

__attribute__((used)) static int FUNC11(struct bnxt *bp, void *buf, u32 *dump_len)
{
	u32 ver_get_resp_len = sizeof(struct hwrm_ver_get_output);
	struct coredump_segment_record *seg_record = NULL;
	u32 offset = 0, seg_hdr_len, seg_record_len;
	struct bnxt_coredump_segment_hdr seg_hdr;
	struct bnxt_coredump coredump = {NULL};
	time64_t start_time;
	u16 start_utc;
	int rc = 0, i;

	start_time = FUNC7();
	start_utc = sys_tz.tz_minuteswest * 60;
	seg_hdr_len = sizeof(seg_hdr);

	/* First segment should be hwrm_ver_get response */
	*dump_len = seg_hdr_len + ver_get_resp_len;
	if (buf) {
		FUNC1(bp, &seg_hdr, NULL, ver_get_resp_len,
					   0, 0, 0);
		FUNC9(buf + offset, &seg_hdr, seg_hdr_len);
		offset += seg_hdr_len;
		FUNC9(buf + offset, &bp->ver_resp, ver_get_resp_len);
		offset += ver_get_resp_len;
	}

	rc = FUNC3(bp, &coredump);
	if (rc) {
		FUNC10(bp->dev, "Failed to get coredump segment list\n");
		goto err;
	}

	*dump_len += seg_hdr_len * coredump.total_segs;

	seg_record = (struct coredump_segment_record *)coredump.data;
	seg_record_len = sizeof(*seg_record);

	for (i = 0; i < coredump.total_segs; i++) {
		u16 comp_id = FUNC8(seg_record->component_id);
		u16 seg_id = FUNC8(seg_record->segment_id);
		u32 duration = 0, seg_len = 0;
		unsigned long start, end;

		start = jiffies;

		rc = FUNC2(bp, comp_id, seg_id);
		if (rc) {
			FUNC10(bp->dev,
				   "Failed to initiate coredump for seg = %d\n",
				   seg_record->segment_id);
			goto next_seg;
		}

		/* Write segment data into the buffer */
		rc = FUNC4(bp, comp_id, seg_id,
						     &seg_len, buf,
						     offset + seg_hdr_len);
		if (rc)
			FUNC10(bp->dev,
				   "Failed to retrieve coredump for seg = %d\n",
				   seg_record->segment_id);

next_seg:
		end = jiffies;
		duration = FUNC5(end - start);
		FUNC1(bp, &seg_hdr, seg_record, seg_len,
					   rc, duration, 0);

		if (buf) {
			/* Write segment header into the buffer */
			FUNC9(buf + offset, &seg_hdr, seg_hdr_len);
			offset += seg_hdr_len + seg_len;
		}

		*dump_len += seg_len;
		seg_record =
			(struct coredump_segment_record *)((u8 *)seg_record +
							   seg_record_len);
	}

err:
	if (buf)
		FUNC0(bp, buf + offset, start_time,
					  start_utc, coredump.total_segs + 1,
					  rc);
	FUNC6(coredump.data);
	*dump_len += sizeof(struct bnxt_coredump_record);

	return rc;
}