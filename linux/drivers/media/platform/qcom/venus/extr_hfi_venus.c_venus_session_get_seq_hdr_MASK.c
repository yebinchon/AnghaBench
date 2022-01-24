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
struct venus_inst {int /*<<< orphan*/  core; } ;
struct venus_hfi_device {int dummy; } ;
struct hfi_session_get_sequence_header_pkt {int dummy; } ;

/* Variables and functions */
 int IFACEQ_VAR_SMALL_PKT_SIZE ; 
 int FUNC0 (struct hfi_session_get_sequence_header_pkt*,struct venus_inst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct venus_hfi_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct venus_hfi_device*,struct hfi_session_get_sequence_header_pkt*) ; 

__attribute__((used)) static int FUNC3(struct venus_inst *inst, u32 seq_hdr,
				     u32 seq_hdr_len)
{
	struct venus_hfi_device *hdev = FUNC1(inst->core);
	struct hfi_session_get_sequence_header_pkt *pkt;
	u8 packet[IFACEQ_VAR_SMALL_PKT_SIZE];
	int ret;

	pkt = (struct hfi_session_get_sequence_header_pkt *)packet;

	ret = FUNC0(pkt, inst, seq_hdr, seq_hdr_len);
	if (ret)
		return ret;

	return FUNC2(hdev, pkt);
}