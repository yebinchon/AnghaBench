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
struct ubi_vid_hdr {int /*<<< orphan*/  hdr_crc; int /*<<< orphan*/  sqnum; int /*<<< orphan*/  data_pad; int /*<<< orphan*/  used_ebs; int /*<<< orphan*/  data_size; int /*<<< orphan*/  lnum; int /*<<< orphan*/  vol_id; scalar_t__ compat; scalar_t__ copy_flag; scalar_t__ vol_type; scalar_t__ version; int /*<<< orphan*/  magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  UBI_VID_HDR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,struct ubi_vid_hdr const*,int /*<<< orphan*/ ,int) ; 

void FUNC4(const struct ubi_vid_hdr *vid_hdr)
{
	FUNC2("Volume identifier header dump:\n");
	FUNC2("\tmagic     %08x\n", FUNC0(vid_hdr->magic));
	FUNC2("\tversion   %d\n",  (int)vid_hdr->version);
	FUNC2("\tvol_type  %d\n",  (int)vid_hdr->vol_type);
	FUNC2("\tcopy_flag %d\n",  (int)vid_hdr->copy_flag);
	FUNC2("\tcompat    %d\n",  (int)vid_hdr->compat);
	FUNC2("\tvol_id    %d\n",  FUNC0(vid_hdr->vol_id));
	FUNC2("\tlnum      %d\n",  FUNC0(vid_hdr->lnum));
	FUNC2("\tdata_size %d\n",  FUNC0(vid_hdr->data_size));
	FUNC2("\tused_ebs  %d\n",  FUNC0(vid_hdr->used_ebs));
	FUNC2("\tdata_pad  %d\n",  FUNC0(vid_hdr->data_pad));
	FUNC2("\tsqnum     %llu\n",
		(unsigned long long)FUNC1(vid_hdr->sqnum));
	FUNC2("\thdr_crc   %08x\n", FUNC0(vid_hdr->hdr_crc));
	FUNC2("Volume identifier header hexdump:\n");
	FUNC3(KERN_DEBUG, "", DUMP_PREFIX_OFFSET, 32, 1,
		       vid_hdr, UBI_VID_HDR_SIZE, 1);
}