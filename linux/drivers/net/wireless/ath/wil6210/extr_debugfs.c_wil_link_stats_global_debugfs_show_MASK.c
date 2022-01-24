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
struct TYPE_2__ {int /*<<< orphan*/  stats; int /*<<< orphan*/  tsf; int /*<<< orphan*/  ready; } ;
struct wil6210_priv {TYPE_1__ fw_stats_global; } ;
struct seq_file {struct wil6210_priv* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wil6210_priv*,struct seq_file*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct seq_file *s, void *data)
{
	struct wil6210_priv *wil = s->private;

	if (!wil->fw_stats_global.ready)
		return 0;

	FUNC0(s, "TSF %lld\n", wil->fw_stats_global.tsf);
	FUNC1(wil, s, &wil->fw_stats_global.stats);

	return 0;
}