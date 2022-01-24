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
struct wil_ring {int dummy; } ;
struct wil6210_priv {int num_rx_status_rings; int /*<<< orphan*/ * srings; struct wil_ring ring_rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wil6210_priv*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wil6210_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct wil6210_priv*,struct wil_ring*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct wil6210_priv*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct wil6210_priv *wil)
{
	struct wil_ring *ring = &wil->ring_rx;
	int i;

	FUNC0(wil, "rx_fini_edma\n");

	FUNC2(wil, ring);

	for (i = 0; i < wil->num_rx_status_rings; i++) {
		FUNC3(&wil->srings[i]);
		FUNC4(wil, &wil->srings[i]);
	}

	FUNC1(wil);
}