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
struct wmi_temp_sense_all_done_event {int rf_bitmap; int /*<<< orphan*/ * rf_t1000; int /*<<< orphan*/  baseband_t1000; } ;
struct wil6210_priv {int /*<<< orphan*/  fw_capabilities; } ;
struct seq_file {struct wil6210_priv* private; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  WMI_FW_CAPABILITY_TEMPERATURE_ALL_RF ; 
 int WMI_MAX_XIF_PORTS_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wil6210_priv*,char*) ; 
 int FUNC6 (struct wil6210_priv*,struct wmi_temp_sense_all_done_event*) ; 
 int FUNC7 (struct wil6210_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct seq_file *s, void *data)
{
	struct wil6210_priv *wil = s->private;
	int rc, i;

	if (FUNC4(WMI_FW_CAPABILITY_TEMPERATURE_ALL_RF,
		     wil->fw_capabilities)) {
		struct wmi_temp_sense_all_done_event sense_all_evt;

		FUNC5(wil,
			     "WMI_FW_CAPABILITY_TEMPERATURE_ALL_RF is supported");
		rc = FUNC6(wil, &sense_all_evt);
		if (rc) {
			FUNC3(s, "Failed\n");
			return 0;
		}
		FUNC1(s, "T_mac   =",
			   FUNC0(sense_all_evt.baseband_t1000));
		FUNC2(s, "Connected RFs [0x%08x]\n",
			   sense_all_evt.rf_bitmap);
		for (i = 0; i < WMI_MAX_XIF_PORTS_NUM; i++) {
			FUNC2(s, "RF[%d]   = ", i);
			FUNC1(s, "",
				   FUNC0(sense_all_evt.rf_t1000[i]));
		}
	} else {
		s32 t_m, t_r;

		FUNC5(wil,
			     "WMI_FW_CAPABILITY_TEMPERATURE_ALL_RF is not supported");
		rc = FUNC7(wil, &t_m, &t_r);
		if (rc) {
			FUNC3(s, "Failed\n");
			return 0;
		}
		FUNC1(s, "T_mac   =", t_m);
		FUNC1(s, "T_radio =", t_r);
	}
	return 0;
}