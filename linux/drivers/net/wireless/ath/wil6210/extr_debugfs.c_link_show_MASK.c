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
typedef  size_t u8 ;
struct wil_sta_info {int status; size_t mid; int /*<<< orphan*/  addr; } ;
struct wil6210_vif {int dummy; } ;
struct wil6210_priv {int max_assoc_sta; struct wil6210_vif** vifs; struct wil_sta_info* sta; } ;
struct TYPE_4__ {int /*<<< orphan*/  mcs; } ;
struct TYPE_3__ {int /*<<< orphan*/  mcs; } ;
struct station_info {int /*<<< orphan*/  signal; TYPE_2__ rxrate; TYPE_1__ txrate; } ;
struct seq_file {struct wil6210_priv* private; } ;

/* Variables and functions */
 int ENOMEM ; 
 size_t FUNC0 (struct wil6210_priv*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t U8_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct station_info*) ; 
 struct station_info* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*) ; 
 int FUNC5 (struct wil6210_vif*,int,struct station_info*) ; 
#define  wil_sta_conn_pending 130 
#define  wil_sta_connected 129 
#define  wil_sta_unused 128 

__attribute__((used)) static int FUNC6(struct seq_file *s, void *data)
{
	struct wil6210_priv *wil = s->private;
	struct station_info *sinfo;
	int i, rc = 0;

	sinfo = FUNC2(sizeof(*sinfo), GFP_KERNEL);
	if (!sinfo)
		return -ENOMEM;

	for (i = 0; i < wil->max_assoc_sta; i++) {
		struct wil_sta_info *p = &wil->sta[i];
		char *status = "unknown";
		struct wil6210_vif *vif;
		u8 mid;

		switch (p->status) {
		case wil_sta_unused:
			status = "unused   ";
			break;
		case wil_sta_conn_pending:
			status = "pending  ";
			break;
		case wil_sta_connected:
			status = "connected";
			break;
		}
		mid = (p->status != wil_sta_unused) ? p->mid : U8_MAX;
		FUNC3(s, "[%d][MID %d] %pM %s\n",
			   i, mid, p->addr, status);

		if (p->status != wil_sta_connected)
			continue;

		vif = (mid < FUNC0(wil)) ? wil->vifs[mid] : NULL;
		if (vif) {
			rc = FUNC5(vif, i, sinfo);
			if (rc)
				goto out;

			FUNC3(s, "  Tx_mcs = %d\n", sinfo->txrate.mcs);
			FUNC3(s, "  Rx_mcs = %d\n", sinfo->rxrate.mcs);
			FUNC3(s, "  SQ     = %d\n", sinfo->signal);
		} else {
			FUNC4(s, "  INVALID MID\n");
		}
	}

out:
	FUNC1(sinfo);
	return rc;
}