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
struct uni_data_desc {int /*<<< orphan*/  size; int /*<<< orphan*/  findex; } ;
struct netxen_adapter {scalar_t__ fw_type; struct firmware* fw; } ;
struct firmware {int /*<<< orphan*/ * data; } ;
typedef  int __le32 ;

/* Variables and functions */
 size_t NX_FW_VERSION_OFFSET ; 
 scalar_t__ NX_UNIFIED_ROMIMAGE ; 
 int /*<<< orphan*/  NX_UNI_DIR_SECT_FW ; 
 int /*<<< orphan*/  NX_UNI_FIRMWARE_IDX_OFF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct uni_data_desc* FUNC1 (struct netxen_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/  const*,char*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,char*,int) ; 

__attribute__((used)) static __le32
FUNC4(struct netxen_adapter *adapter)
{
	struct uni_data_desc *fw_data_desc;
	const struct firmware *fw = adapter->fw;
	__le32 major, minor, sub;
	const u8 *ver_str;
	int i, ret = 0;

	if (adapter->fw_type == NX_UNIFIED_ROMIMAGE) {

		fw_data_desc = FUNC1(adapter,
				NX_UNI_DIR_SECT_FW, NX_UNI_FIRMWARE_IDX_OFF);
		ver_str = fw->data + FUNC0(fw_data_desc->findex) +
				FUNC0(fw_data_desc->size) - 17;

		for (i = 0; i < 12; i++) {
			if (!FUNC3(&ver_str[i], "REV=", 4)) {
				ret = FUNC2(&ver_str[i+4], "%u.%u.%u ",
							&major, &minor, &sub);
				break;
			}
		}

		if (ret != 3)
			return 0;

		return major + (minor << 8) + (sub << 16);

	} else
		return FUNC0(*(u32 *)&fw->data[NX_FW_VERSION_OFFSET]);
}