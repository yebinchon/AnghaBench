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
struct wil6210_vif {int /*<<< orphan*/  mid; } ;
struct wil6210_priv {struct wil6210_vif** vifs; } ;

/* Variables and functions */
 int FUNC0 (struct wil6210_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct wil6210_vif*) ; 
 int /*<<< orphan*/  FUNC2 (struct wil6210_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct wil6210_priv *wil)
{
	struct wil6210_vif *vif;
	int i;

	for (i = 1; i < FUNC0(wil); i++) {
		vif = wil->vifs[i];
		if (vif) {
			FUNC1(vif);
			FUNC2(wil, vif->mid);
		}
	}
}