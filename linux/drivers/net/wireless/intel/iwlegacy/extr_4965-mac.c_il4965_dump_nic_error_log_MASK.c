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
typedef  int u32 ;
struct TYPE_8__ {int err_code; } ;
struct TYPE_6__ {int /*<<< orphan*/  error_event_table_ptr; } ;
struct TYPE_5__ {int /*<<< orphan*/  error_event_table_ptr; } ;
struct il_priv {scalar_t__ ucode_type; TYPE_4__ isr_stats; int /*<<< orphan*/  status; TYPE_3__* ops; TYPE_2__ card_alive; TYPE_1__ card_alive_init; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* is_valid_rtc_data_addr ) (int) ;} ;

/* Variables and functions */
 int ERROR_ELEM_SIZE ; 
 int ERROR_START_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ UCODE_INIT ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct il_priv*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void
FUNC5(struct il_priv *il)
{
	u32 data2, line;
	u32 desc, time, count, base, data1;
	u32 blink1, blink2, ilink1, ilink2;
	u32 pc, hcmd;

	if (il->ucode_type == UCODE_INIT)
		base = FUNC3(il->card_alive_init.error_event_table_ptr);
	else
		base = FUNC3(il->card_alive.error_event_table_ptr);

	if (!il->ops->is_valid_rtc_data_addr(base)) {
		FUNC0("Not valid error log pointer 0x%08X for %s uCode\n",
		       base, (il->ucode_type == UCODE_INIT) ? "Init" : "RT");
		return;
	}

	count = FUNC2(il, base);

	if (ERROR_START_OFFSET <= count * ERROR_ELEM_SIZE) {
		FUNC0("Start IWL Error Log Dump:\n");
		FUNC0("Status: 0x%08lX, count: %d\n", il->status, count);
	}

	desc = FUNC2(il, base + 1 * sizeof(u32));
	il->isr_stats.err_code = desc;
	pc = FUNC2(il, base + 2 * sizeof(u32));
	blink1 = FUNC2(il, base + 3 * sizeof(u32));
	blink2 = FUNC2(il, base + 4 * sizeof(u32));
	ilink1 = FUNC2(il, base + 5 * sizeof(u32));
	ilink2 = FUNC2(il, base + 6 * sizeof(u32));
	data1 = FUNC2(il, base + 7 * sizeof(u32));
	data2 = FUNC2(il, base + 8 * sizeof(u32));
	line = FUNC2(il, base + 9 * sizeof(u32));
	time = FUNC2(il, base + 11 * sizeof(u32));
	hcmd = FUNC2(il, base + 22 * sizeof(u32));

	FUNC0("Desc                                  Time       "
	       "data1      data2      line\n");
	FUNC0("%-28s (0x%04X) %010u 0x%08X 0x%08X %u\n",
	       FUNC1(desc), desc, time, data1, data2, line);
	FUNC0("pc      blink1  blink2  ilink1  ilink2  hcmd\n");
	FUNC0("0x%05X 0x%05X 0x%05X 0x%05X 0x%05X 0x%05X\n", pc, blink1,
	       blink2, ilink1, ilink2, hcmd);
}