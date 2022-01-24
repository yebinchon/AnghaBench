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
struct ubi_ec_hdr {int /*<<< orphan*/  hdr_crc; int /*<<< orphan*/  image_seq; int /*<<< orphan*/  data_offset; int /*<<< orphan*/  vid_hdr_offset; int /*<<< orphan*/  ec; scalar_t__ version; int /*<<< orphan*/  magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  UBI_EC_HDR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,struct ubi_ec_hdr const*,int /*<<< orphan*/ ,int) ; 

void FUNC4(const struct ubi_ec_hdr *ec_hdr)
{
	FUNC2("Erase counter header dump:\n");
	FUNC2("\tmagic          %#08x\n", FUNC0(ec_hdr->magic));
	FUNC2("\tversion        %d\n", (int)ec_hdr->version);
	FUNC2("\tec             %llu\n", (long long)FUNC1(ec_hdr->ec));
	FUNC2("\tvid_hdr_offset %d\n", FUNC0(ec_hdr->vid_hdr_offset));
	FUNC2("\tdata_offset    %d\n", FUNC0(ec_hdr->data_offset));
	FUNC2("\timage_seq      %d\n", FUNC0(ec_hdr->image_seq));
	FUNC2("\thdr_crc        %#08x\n", FUNC0(ec_hdr->hdr_crc));
	FUNC2("erase counter header hexdump:\n");
	FUNC3(KERN_DEBUG, "", DUMP_PREFIX_OFFSET, 32, 1,
		       ec_hdr, UBI_EC_HDR_SIZE, 1);
}