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
typedef  scalar_t__ u8 ;
struct ubi_attach_info {int dummy; } ;
struct ubi_ainf_volume {int data_pad; int last_data_size; scalar_t__ vol_type; int used_ebs; scalar_t__ compat; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ubi_ainf_volume*) ; 
 scalar_t__ UBI_STATIC_VOLUME ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 struct ubi_ainf_volume* FUNC2 (struct ubi_attach_info*,int) ; 

__attribute__((used)) static struct ubi_ainf_volume *FUNC3(struct ubi_attach_info *ai, int vol_id,
				       int used_ebs, int data_pad, u8 vol_type,
				       int last_eb_bytes)
{
	struct ubi_ainf_volume *av;

	av = FUNC2(ai, vol_id);
	if (FUNC0(av))
		return av;

	av->data_pad = data_pad;
	av->last_data_size = last_eb_bytes;
	av->compat = 0;
	av->vol_type = vol_type;
	if (av->vol_type == UBI_STATIC_VOLUME)
		av->used_ebs = used_ebs;

	FUNC1("found volume (ID %i)", vol_id);
	return av;
}