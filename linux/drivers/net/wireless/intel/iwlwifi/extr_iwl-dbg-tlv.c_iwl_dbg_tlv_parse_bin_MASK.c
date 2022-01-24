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
typedef  size_t u32 ;
struct iwl_ucode_tlv {int /*<<< orphan*/  length; } ;
struct iwl_trans {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (size_t,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*,char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,struct iwl_ucode_tlv*,int) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct iwl_trans *trans, const u8 *data,
				 size_t len)
{
	struct iwl_ucode_tlv *tlv;
	u32 tlv_len;

	while (len >= sizeof(*tlv)) {
		len -= sizeof(*tlv);
		tlv = (void *)data;

		tlv_len = FUNC3(tlv->length);

		if (len < tlv_len) {
			FUNC1(trans, "invalid TLV len: %zd/%u\n",
				len, tlv_len);
			return -EINVAL;
		}
		len -= FUNC0(tlv_len, 4);
		data += sizeof(*tlv) + FUNC0(tlv_len, 4);

		FUNC2(trans, tlv, true);
	}

	return 0;
}