#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u32 ;
struct ath10k_mem_region {size_t len; int type; int start; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int size; struct ath10k_mem_region* regions; } ;
struct ath10k_hw_mem_layout {TYPE_1__ region_table; } ;
struct ath10k_fw_crash_data {size_t ramdump_buf_len; int /*<<< orphan*/ * ramdump_buf; } ;
struct ath10k_dump_ram_data_hdr {void* length; void* start; void* region_type; } ;
struct ath10k {int /*<<< orphan*/  dump_mutex; } ;

/* Variables and functions */
#define  ATH10K_MEM_REGION_TYPE_IOREG 129 
#define  ATH10K_MEM_REGION_TYPE_IOSRAM 128 
 int ATH10K_MEM_REGION_TYPE_IRAM1 ; 
 int ATH10K_MEM_REGION_TYPE_IRAM2 ; 
 struct ath10k_hw_mem_layout* FUNC0 (struct ath10k*) ; 
 int FUNC1 (struct ath10k*,struct ath10k_mem_region const*,int /*<<< orphan*/ *) ; 
 size_t FUNC2 (struct ath10k*,struct ath10k_mem_region const*,int /*<<< orphan*/ *) ; 
 size_t FUNC3 (struct ath10k*,struct ath10k_mem_region const*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ath10k*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct ath10k*,char*,int /*<<< orphan*/ ,int,...) ; 
 void* FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void FUNC9(struct ath10k *ar,
				   struct ath10k_fw_crash_data *crash_data)
{
	const struct ath10k_hw_mem_layout *mem_layout;
	const struct ath10k_mem_region *current_region;
	struct ath10k_dump_ram_data_hdr *hdr;
	u32 count, shift;
	size_t buf_len;
	int ret, i;
	u8 *buf;

	FUNC7(&ar->dump_mutex);

	if (!crash_data)
		return;

	mem_layout = FUNC0(ar);
	if (!mem_layout)
		return;

	current_region = &mem_layout->region_table.regions[0];

	buf = crash_data->ramdump_buf;
	buf_len = crash_data->ramdump_buf_len;

	FUNC8(buf, 0, buf_len);

	for (i = 0; i < mem_layout->region_table.size; i++) {
		count = 0;

		if (current_region->len > buf_len) {
			FUNC5(ar, "memory region %s size %d is larger that remaining ramdump buffer size %zu\n",
				    current_region->name,
				    current_region->len,
				    buf_len);
			break;
		}

		/* To get IRAM dump, the host driver needs to switch target
		 * ram config from DRAM to IRAM.
		 */
		if (current_region->type == ATH10K_MEM_REGION_TYPE_IRAM1 ||
		    current_region->type == ATH10K_MEM_REGION_TYPE_IRAM2) {
			shift = current_region->start >> 20;

			ret = FUNC4(ar, shift);
			if (ret) {
				FUNC5(ar, "failed to switch ram config to IRAM for section %s: %d\n",
					    current_region->name, ret);
				break;
			}
		}

		/* Reserve space for the header. */
		hdr = (void *)buf;
		buf += sizeof(*hdr);
		buf_len -= sizeof(*hdr);

		switch (current_region->type) {
		case ATH10K_MEM_REGION_TYPE_IOSRAM:
			count = FUNC3(ar, current_region, buf);
			break;
		case ATH10K_MEM_REGION_TYPE_IOREG:
			count = FUNC2(ar, current_region, buf);
			break;
		default:
			ret = FUNC1(ar, current_region, buf);
			if (ret < 0)
				break;

			count = ret;
			break;
		}

		hdr->region_type = FUNC6(current_region->type);
		hdr->start = FUNC6(current_region->start);
		hdr->length = FUNC6(count);

		if (count == 0)
			/* Note: the header remains, just with zero length. */
			break;

		buf += count;
		buf_len -= count;

		current_region++;
	}
}