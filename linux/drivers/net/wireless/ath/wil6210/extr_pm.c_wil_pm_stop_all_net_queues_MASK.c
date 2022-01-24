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

/* Variables and functions */
 int FUNC0 (struct wil6210_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wil6210_priv*,struct wil6210_vif*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(struct wil6210_priv *wil)
{
	int i;

	FUNC1(&wil->vif_mutex);
	for (i = 0; i < FUNC0(wil); i++) {
		struct wil6210_vif *vif = wil->vifs[i];

		if (vif)
			FUNC3(wil, vif, NULL, true);
	}
	FUNC2(&wil->vif_mutex);
}