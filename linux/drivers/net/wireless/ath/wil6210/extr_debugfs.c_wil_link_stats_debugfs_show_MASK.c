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
struct wil6210_vif {int dummy; } ;
struct wil6210_priv {int /*<<< orphan*/  vif_mutex; struct wil6210_vif** vifs; } ;
struct seq_file {struct wil6210_priv* private; } ;

/* Variables and functions */
 int FUNC0 (struct wil6210_priv*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct wil6210_vif*,struct seq_file*) ; 

__attribute__((used)) static int FUNC6(struct seq_file *s, void *data)
{
	struct wil6210_priv *wil = s->private;
	struct wil6210_vif *vif;
	int i, rc;

	rc = FUNC1(&wil->vif_mutex);
	if (rc)
		return rc;

	/* iterate over all MIDs and show per-cid statistics. Then show the
	 * global statistics
	 */
	for (i = 0; i < FUNC0(wil); i++) {
		vif = wil->vifs[i];

		FUNC3(s, "MID %d ", i);
		if (!vif) {
			FUNC4(s, "unused\n");
			continue;
		}

		FUNC5(vif, s);
	}

	FUNC2(&wil->vif_mutex);

	return 0;
}