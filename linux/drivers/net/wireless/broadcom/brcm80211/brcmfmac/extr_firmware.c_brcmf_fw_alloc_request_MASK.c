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
typedef  size_t u32 ;
struct brcmf_fw_request {size_t n_items; TYPE_1__* items; } ;
struct brcmf_fw_name {char* path; char* extension; } ;
struct brcmf_firmware_mapping {size_t chipid; int revmask; char* fw_base; } ;
typedef  int /*<<< orphan*/  chipname ;
struct TYPE_4__ {char* firmware_path; } ;
struct TYPE_3__ {char* path; } ;

/* Variables and functions */
 int FUNC0 (size_t) ; 
 int /*<<< orphan*/  BRCMF_FW_ALTPATH_LEN ; 
 int /*<<< orphan*/  BRCMF_FW_NAME_LEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (size_t,size_t,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 TYPE_2__ brcmf_mp_global ; 
 int /*<<< orphan*/  items ; 
 struct brcmf_fw_request* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int /*<<< orphan*/ ) ; 
 size_t FUNC7 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct brcmf_fw_request*,int /*<<< orphan*/ ,size_t) ; 

struct brcmf_fw_request *
FUNC9(u32 chip, u32 chiprev,
		       const struct brcmf_firmware_mapping mapping_table[],
		       u32 table_size, struct brcmf_fw_name *fwnames,
		       u32 n_fwnames)
{
	struct brcmf_fw_request *fwreq;
	char chipname[12];
	const char *mp_path;
	size_t mp_path_len;
	u32 i, j;
	char end = '\0';

	for (i = 0; i < table_size; i++) {
		if (mapping_table[i].chipid == chip &&
		    mapping_table[i].revmask & FUNC0(chiprev))
			break;
	}

	FUNC1(chip, chiprev, chipname, sizeof(chipname));

	if (i == table_size) {
		FUNC2("Unknown chip %s\n", chipname);
		return NULL;
	}

	fwreq = FUNC4(FUNC8(fwreq, items, n_fwnames), GFP_KERNEL);
	if (!fwreq)
		return NULL;

	FUNC3("using %s for chip %s\n",
		   mapping_table[i].fw_base, chipname);

	mp_path = brcmf_mp_global.firmware_path;
	mp_path_len = FUNC7(mp_path, BRCMF_FW_ALTPATH_LEN);
	if (mp_path_len)
		end = mp_path[mp_path_len - 1];

	fwreq->n_items = n_fwnames;

	for (j = 0; j < n_fwnames; j++) {
		fwreq->items[j].path = fwnames[j].path;
		fwnames[j].path[0] = '\0';
		/* check if firmware path is provided by module parameter */
		if (brcmf_mp_global.firmware_path[0] != '\0') {
			FUNC6(fwnames[j].path, mp_path,
				BRCMF_FW_NAME_LEN);

			if (end != '/') {
				FUNC5(fwnames[j].path, "/",
					BRCMF_FW_NAME_LEN);
			}
		}
		FUNC5(fwnames[j].path, mapping_table[i].fw_base,
			BRCMF_FW_NAME_LEN);
		FUNC5(fwnames[j].path, fwnames[j].extension,
			BRCMF_FW_NAME_LEN);
		fwreq->items[j].path = fwnames[j].path;
	}

	return fwreq;
}