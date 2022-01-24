#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct TYPE_6__ {int /*<<< orphan*/ * data; int /*<<< orphan*/  init_data_size; int /*<<< orphan*/  init_size; int /*<<< orphan*/  data_size; int /*<<< orphan*/  inst_size; } ;
struct TYPE_5__ {int /*<<< orphan*/ * data; int /*<<< orphan*/  init_data_size; int /*<<< orphan*/  init_size; int /*<<< orphan*/  data_size; int /*<<< orphan*/  inst_size; int /*<<< orphan*/  build; } ;
struct TYPE_7__ {TYPE_2__ v1; TYPE_1__ v2; } ;
struct iwl_ucode_header {TYPE_3__ u; int /*<<< orphan*/  ver; } ;
struct iwl_firmware_pieces {int dummy; } ;
struct TYPE_8__ {void* ucode_ver; int /*<<< orphan*/  fw_version; } ;
struct iwl_drv {TYPE_4__ fw; } ;
struct firmware {int size; scalar_t__ data; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IWLAGN_RTC_DATA_LOWER_BOUND ; 
 int /*<<< orphan*/  IWLAGN_RTC_INST_LOWER_BOUND ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_drv*,char*,...) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  IWL_UCODE_INIT ; 
 int FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  IWL_UCODE_REGULAR ; 
 int /*<<< orphan*/  IWL_UCODE_SECTION_DATA ; 
 int /*<<< orphan*/  IWL_UCODE_SECTION_INST ; 
 int FUNC4 (void*) ; 
 int FUNC5 (struct iwl_firmware_pieces*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_firmware_pieces*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_firmware_pieces*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct iwl_firmware_pieces*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,char*,int,int,int,int,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 

__attribute__((used)) static int FUNC12(struct iwl_drv *drv,
				    const struct firmware *ucode_raw,
				    struct iwl_firmware_pieces *pieces)
{
	struct iwl_ucode_header *ucode = (void *)ucode_raw->data;
	u32 api_ver, hdr_size, build;
	char buildstr[25];
	const u8 *src;

	drv->fw.ucode_ver = FUNC6(ucode->ver);
	api_ver = FUNC1(drv->fw.ucode_ver);

	switch (api_ver) {
	default:
		hdr_size = 28;
		if (ucode_raw->size < hdr_size) {
			FUNC0(drv, "File size too small!\n");
			return -EINVAL;
		}
		build = FUNC6(ucode->u.v2.build);
		FUNC9(pieces, IWL_UCODE_REGULAR, IWL_UCODE_SECTION_INST,
			     FUNC6(ucode->u.v2.inst_size));
		FUNC9(pieces, IWL_UCODE_REGULAR, IWL_UCODE_SECTION_DATA,
			     FUNC6(ucode->u.v2.data_size));
		FUNC9(pieces, IWL_UCODE_INIT, IWL_UCODE_SECTION_INST,
			     FUNC6(ucode->u.v2.init_size));
		FUNC9(pieces, IWL_UCODE_INIT, IWL_UCODE_SECTION_DATA,
			     FUNC6(ucode->u.v2.init_data_size));
		src = ucode->u.v2.data;
		break;
	case 0:
	case 1:
	case 2:
		hdr_size = 24;
		if (ucode_raw->size < hdr_size) {
			FUNC0(drv, "File size too small!\n");
			return -EINVAL;
		}
		build = 0;
		FUNC9(pieces, IWL_UCODE_REGULAR, IWL_UCODE_SECTION_INST,
			     FUNC6(ucode->u.v1.inst_size));
		FUNC9(pieces, IWL_UCODE_REGULAR, IWL_UCODE_SECTION_DATA,
			     FUNC6(ucode->u.v1.data_size));
		FUNC9(pieces, IWL_UCODE_INIT, IWL_UCODE_SECTION_INST,
			     FUNC6(ucode->u.v1.init_size));
		FUNC9(pieces, IWL_UCODE_INIT, IWL_UCODE_SECTION_DATA,
			     FUNC6(ucode->u.v1.init_data_size));
		src = ucode->u.v1.data;
		break;
	}

	if (build)
		FUNC11(buildstr, " build %u", build);
	else
		buildstr[0] = '\0';

	FUNC10(drv->fw.fw_version,
		 sizeof(drv->fw.fw_version),
		 "%u.%u.%u.%u%s",
		 FUNC2(drv->fw.ucode_ver),
		 FUNC3(drv->fw.ucode_ver),
		 FUNC1(drv->fw.ucode_ver),
		 FUNC4(drv->fw.ucode_ver),
		 buildstr);

	/* Verify size of file vs. image size info in file's header */

	if (ucode_raw->size != hdr_size +
	    FUNC5(pieces, IWL_UCODE_REGULAR, IWL_UCODE_SECTION_INST) +
	    FUNC5(pieces, IWL_UCODE_REGULAR, IWL_UCODE_SECTION_DATA) +
	    FUNC5(pieces, IWL_UCODE_INIT, IWL_UCODE_SECTION_INST) +
	    FUNC5(pieces, IWL_UCODE_INIT, IWL_UCODE_SECTION_DATA)) {

		FUNC0(drv,
			"uCode file size %d does not match expected size\n",
			(int)ucode_raw->size);
		return -EINVAL;
	}


	FUNC7(pieces, IWL_UCODE_REGULAR, IWL_UCODE_SECTION_INST, src);
	src += FUNC5(pieces, IWL_UCODE_REGULAR, IWL_UCODE_SECTION_INST);
	FUNC8(pieces, IWL_UCODE_REGULAR, IWL_UCODE_SECTION_INST,
		       IWLAGN_RTC_INST_LOWER_BOUND);
	FUNC7(pieces, IWL_UCODE_REGULAR, IWL_UCODE_SECTION_DATA, src);
	src += FUNC5(pieces, IWL_UCODE_REGULAR, IWL_UCODE_SECTION_DATA);
	FUNC8(pieces, IWL_UCODE_REGULAR, IWL_UCODE_SECTION_DATA,
		       IWLAGN_RTC_DATA_LOWER_BOUND);
	FUNC7(pieces, IWL_UCODE_INIT, IWL_UCODE_SECTION_INST, src);
	src += FUNC5(pieces, IWL_UCODE_INIT, IWL_UCODE_SECTION_INST);
	FUNC8(pieces, IWL_UCODE_INIT, IWL_UCODE_SECTION_INST,
		       IWLAGN_RTC_INST_LOWER_BOUND);
	FUNC7(pieces, IWL_UCODE_INIT, IWL_UCODE_SECTION_DATA, src);
	src += FUNC5(pieces, IWL_UCODE_INIT, IWL_UCODE_SECTION_DATA);
	FUNC8(pieces, IWL_UCODE_INIT, IWL_UCODE_SECTION_DATA,
		       IWLAGN_RTC_DATA_LOWER_BOUND);
	return 0;
}