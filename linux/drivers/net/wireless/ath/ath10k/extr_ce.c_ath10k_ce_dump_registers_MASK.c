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
typedef  size_t u32 ;
struct ath10k_fw_crash_data {struct ath10k_ce_crash_data* ce_crash_data; } ;
struct ath10k_ce_crash_data {void* dst_r_idx; void* dst_wr_idx; void* src_r_idx; void* src_wr_idx; void* base_addr; } ;
struct ath10k_ce {int /*<<< orphan*/  ce_lock; } ;
struct ath10k {int /*<<< orphan*/  dump_mutex; } ;

/* Variables and functions */
 size_t CE_COUNT ; 
 size_t FUNC0 (struct ath10k*,size_t) ; 
 size_t FUNC1 (struct ath10k*,size_t) ; 
 size_t FUNC2 (struct ath10k*,size_t) ; 
 struct ath10k_ce* FUNC3 (struct ath10k*) ; 
 size_t FUNC4 (struct ath10k*,size_t) ; 
 size_t FUNC5 (struct ath10k*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct ath10k*,char*,...) ; 
 void* FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(struct ath10k *ar,
			      struct ath10k_fw_crash_data *crash_data)
{
	struct ath10k_ce *ce = FUNC3(ar);
	struct ath10k_ce_crash_data ce_data;
	u32 addr, id;

	FUNC9(&ar->dump_mutex);

	FUNC6(ar, "Copy Engine register dump:\n");

	FUNC10(&ce->ce_lock);
	for (id = 0; id < CE_COUNT; id++) {
		addr = FUNC0(ar, id);
		ce_data.base_addr = FUNC7(addr);

		ce_data.src_wr_idx =
			FUNC7(FUNC5(ar, addr));
		ce_data.src_r_idx =
			FUNC7(FUNC4(ar, addr));
		ce_data.dst_wr_idx =
			FUNC7(FUNC2(ar, addr));
		ce_data.dst_r_idx =
			FUNC7(FUNC1(ar, addr));

		if (crash_data)
			crash_data->ce_crash_data[id] = ce_data;

		FUNC6(ar, "[%02d]: 0x%08x %3u %3u %3u %3u", id,
			   FUNC8(ce_data.base_addr),
			   FUNC8(ce_data.src_wr_idx),
			   FUNC8(ce_data.src_r_idx),
			   FUNC8(ce_data.dst_wr_idx),
			   FUNC8(ce_data.dst_r_idx));
	}

	FUNC11(&ce->ce_lock);
}