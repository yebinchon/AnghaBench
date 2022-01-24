#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  data; } ;
union init_array_hdr {TYPE_3__ raw; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int const* unzip_buf; struct qed_dev* cdev; } ;
struct qed_dev {TYPE_2__* fw_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  array_offset; } ;
struct init_write_op {int /*<<< orphan*/  data; TYPE_1__ args; } ;
struct TYPE_5__ {int* arr_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*) ; 
 int EINVAL ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INIT_ARRAY_PATTERN_HDR_PATTERN_SIZE ; 
 int /*<<< orphan*/  INIT_ARRAY_PATTERN_HDR_REPETITIONS ; 
 int /*<<< orphan*/  INIT_ARRAY_RAW_HDR_TYPE ; 
 int /*<<< orphan*/  INIT_ARRAY_STANDARD_HDR_SIZE ; 
 int /*<<< orphan*/  INIT_ARRAY_ZIPPED_HDR_ZIPPED_SIZE ; 
#define  INIT_ARR_PATTERN 130 
#define  INIT_ARR_STANDARD 129 
#define  INIT_ARR_ZIPPED 128 
 int /*<<< orphan*/  INIT_WRITE_OP_ADDRESS ; 
 int MAX_ZIPPED_SIZE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int const*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct qed_hwfn*,struct qed_ptt*,int,int,int,int const*,int,int) ; 
 int FUNC5 (struct qed_hwfn*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct qed_hwfn *p_hwfn,
			      struct qed_ptt *p_ptt,
			      struct init_write_op *cmd,
			      bool b_must_dmae, bool b_can_dmae)
{
	u32 dmae_array_offset = FUNC2(cmd->args.array_offset);
	u32 data = FUNC2(cmd->data);
	u32 addr = FUNC1(data, INIT_WRITE_OP_ADDRESS) << 2;

	u32 offset, output_len, input_len, max_size;
	struct qed_dev *cdev = p_hwfn->cdev;
	union init_array_hdr *hdr;
	const u32 *array_data;
	int rc = 0;
	u32 size;

	array_data = cdev->fw_data->arr_data;

	hdr = (union init_array_hdr *)(array_data + dmae_array_offset);
	data = FUNC2(hdr->raw.data);
	switch (FUNC1(data, INIT_ARRAY_RAW_HDR_TYPE)) {
	case INIT_ARR_ZIPPED:
		offset = dmae_array_offset + 1;
		input_len = FUNC1(data,
				      INIT_ARRAY_ZIPPED_HDR_ZIPPED_SIZE);
		max_size = MAX_ZIPPED_SIZE * 4;
		FUNC3(p_hwfn->unzip_buf, 0, max_size);

		output_len = FUNC5(p_hwfn, input_len,
					    (u8 *)&array_data[offset],
					    max_size, (u8 *)p_hwfn->unzip_buf);
		if (output_len) {
			rc = FUNC4(p_hwfn, p_ptt, addr, 0,
						 output_len,
						 p_hwfn->unzip_buf,
						 b_must_dmae, b_can_dmae);
		} else {
			FUNC0(p_hwfn, "Failed to unzip dmae data\n");
			rc = -EINVAL;
		}
		break;
	case INIT_ARR_PATTERN:
	{
		u32 repeats = FUNC1(data,
					INIT_ARRAY_PATTERN_HDR_REPETITIONS);
		u32 i;

		size = FUNC1(data, INIT_ARRAY_PATTERN_HDR_PATTERN_SIZE);

		for (i = 0; i < repeats; i++, addr += size << 2) {
			rc = FUNC4(p_hwfn, p_ptt, addr,
						 dmae_array_offset + 1,
						 size, array_data,
						 b_must_dmae, b_can_dmae);
			if (rc)
				break;
		}
		break;
	}
	case INIT_ARR_STANDARD:
		size = FUNC1(data, INIT_ARRAY_STANDARD_HDR_SIZE);
		rc = FUNC4(p_hwfn, p_ptt, addr,
					 dmae_array_offset + 1,
					 size, array_data,
					 b_must_dmae, b_can_dmae);
		break;
	}

	return rc;
}