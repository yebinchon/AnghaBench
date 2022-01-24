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
typedef  scalar_t__ u32 ;
struct iwl_trans {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {scalar_t__ log_event_table; } ;
struct iwl_priv {scalar_t__ cur_ucode; TYPE_2__* fw; TYPE_1__ device_pointers; struct iwl_trans* trans; } ;
struct TYPE_4__ {scalar_t__ init_evtlog_ptr; scalar_t__ inst_evtlog_ptr; } ;

/* Variables and functions */
 scalar_t__ EVENT_START_OFFSET ; 
 int /*<<< orphan*/  HBUS_TARG_MEM_RADDR ; 
 int /*<<< orphan*/  HBUS_TARG_MEM_RDAT ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*,scalar_t__,scalar_t__,...) ; 
 scalar_t__ IWL_UCODE_INIT ; 
 scalar_t__ FUNC1 (struct iwl_trans*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_trans*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (char*,size_t,char*,scalar_t__,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct iwl_priv *priv, u32 start_idx,
			       u32 num_events, u32 mode,
			       int pos, char **buf, size_t bufsz)
{
	u32 i;
	u32 base;       /* SRAM byte address of event log header */
	u32 event_size; /* 2 u32s, or 3 u32s if timestamp recorded */
	u32 ptr;        /* SRAM byte address of log data */
	u32 ev, time, data; /* event log data */
	unsigned long reg_flags;

	struct iwl_trans *trans = priv->trans;

	if (num_events == 0)
		return pos;

	base = priv->device_pointers.log_event_table;
	if (priv->cur_ucode == IWL_UCODE_INIT) {
		if (!base)
			base = priv->fw->init_evtlog_ptr;
	} else {
		if (!base)
			base = priv->fw->inst_evtlog_ptr;
	}

	if (mode == 0)
		event_size = 2 * sizeof(u32);
	else
		event_size = 3 * sizeof(u32);

	ptr = base + EVENT_START_OFFSET + (start_idx * event_size);

	/* Make sure device is powered up for SRAM reads */
	if (!FUNC2(trans, &reg_flags))
		return pos;

	/* Set starting address; reads will auto-increment */
	FUNC4(trans, HBUS_TARG_MEM_RADDR, ptr);

	/* "time" is actually "data" for mode 0 (no timestamp).
	* place event id # at far right for easier visual parsing. */
	for (i = 0; i < num_events; i++) {
		ev = FUNC1(trans, HBUS_TARG_MEM_RDAT);
		time = FUNC1(trans, HBUS_TARG_MEM_RDAT);
		if (mode == 0) {
			/* data, ev */
			if (bufsz) {
				pos += FUNC5(*buf + pos, bufsz - pos,
						"EVT_LOG:0x%08x:%04u\n",
						time, ev);
			} else {
				FUNC6(trans->dev, 0,
					time, ev);
				FUNC0(priv, "EVT_LOG:0x%08x:%04u\n",
					time, ev);
			}
		} else {
			data = FUNC1(trans, HBUS_TARG_MEM_RDAT);
			if (bufsz) {
				pos += FUNC5(*buf + pos, bufsz - pos,
						"EVT_LOGT:%010u:0x%08x:%04u\n",
						 time, data, ev);
			} else {
				FUNC0(priv, "EVT_LOGT:%010u:0x%08x:%04u\n",
					time, data, ev);
				FUNC6(trans->dev, time,
					data, ev);
			}
		}
	}

	/* Allow device to power down */
	FUNC3(trans, &reg_flags);
	return pos;
}