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
struct ubi_ainf_volume {int /*<<< orphan*/  data_pad; int /*<<< orphan*/  last_data_size; int /*<<< orphan*/  used_ebs; int /*<<< orphan*/  vol_type; int /*<<< orphan*/  compat; int /*<<< orphan*/  leb_count; int /*<<< orphan*/  highest_lnum; int /*<<< orphan*/  vol_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void FUNC1(const struct ubi_ainf_volume *av)
{
	FUNC0("Volume attaching information dump:\n");
	FUNC0("\tvol_id         %d\n", av->vol_id);
	FUNC0("\thighest_lnum   %d\n", av->highest_lnum);
	FUNC0("\tleb_count      %d\n", av->leb_count);
	FUNC0("\tcompat         %d\n", av->compat);
	FUNC0("\tvol_type       %d\n", av->vol_type);
	FUNC0("\tused_ebs       %d\n", av->used_ebs);
	FUNC0("\tlast_data_size %d\n", av->last_data_size);
	FUNC0("\tdata_pad       %d\n", av->data_pad);
}