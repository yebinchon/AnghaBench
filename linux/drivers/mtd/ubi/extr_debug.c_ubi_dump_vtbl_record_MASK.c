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
struct ubi_vtbl_record {char* name; int /*<<< orphan*/  crc; scalar_t__ upd_marker; scalar_t__ vol_type; int /*<<< orphan*/  data_pad; int /*<<< orphan*/  alignment; int /*<<< orphan*/  reserved_pebs; int /*<<< orphan*/  name_len; } ;

/* Variables and functions */
 int UBI_VOL_NAME_MAX ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (char*,int) ; 

void FUNC4(const struct ubi_vtbl_record *r, int idx)
{
	int name_len = FUNC0(r->name_len);

	FUNC2("Volume table record %d dump:\n", idx);
	FUNC2("\treserved_pebs   %d\n", FUNC1(r->reserved_pebs));
	FUNC2("\talignment       %d\n", FUNC1(r->alignment));
	FUNC2("\tdata_pad        %d\n", FUNC1(r->data_pad));
	FUNC2("\tvol_type        %d\n", (int)r->vol_type);
	FUNC2("\tupd_marker      %d\n", (int)r->upd_marker);
	FUNC2("\tname_len        %d\n", name_len);

	if (r->name[0] == '\0') {
		FUNC2("\tname            NULL\n");
		return;
	}

	if (name_len <= UBI_VOL_NAME_MAX &&
	    FUNC3(&r->name[0], name_len + 1) == name_len) {
		FUNC2("\tname            %s\n", &r->name[0]);
	} else {
		FUNC2("\t1st 5 characters of name: %c%c%c%c%c\n",
			r->name[0], r->name[1], r->name[2], r->name[3],
			r->name[4]);
	}
	FUNC2("\tcrc             %#08x\n", FUNC1(r->crc));
}