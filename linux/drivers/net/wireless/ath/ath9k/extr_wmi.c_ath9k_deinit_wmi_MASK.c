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
struct wmi {int stopped; int /*<<< orphan*/  op_mutex; } ;
struct ath9k_htc_priv {struct wmi* wmi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wmi*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct ath9k_htc_priv *priv)
{
	struct wmi *wmi = priv->wmi;

	FUNC1(&wmi->op_mutex);
	wmi->stopped = true;
	FUNC2(&wmi->op_mutex);

	FUNC0(priv->wmi);
}