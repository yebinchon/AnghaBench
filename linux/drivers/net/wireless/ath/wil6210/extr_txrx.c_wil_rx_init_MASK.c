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
typedef  int uint ;
struct wil_ring {int size; int is_rx; scalar_t__ va; } ;
struct wil6210_priv {struct wil_ring ring_rx; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct wil6210_priv*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wil6210_priv*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wil6210_priv*) ; 
 int FUNC3 (struct wil6210_priv*,int) ; 
 int FUNC4 (struct wil6210_priv*,struct wil_ring*) ; 
 int /*<<< orphan*/  FUNC5 (struct wil6210_priv*,struct wil_ring*) ; 
 int FUNC6 (struct wil6210_priv*,struct wil_ring*) ; 

__attribute__((used)) static int FUNC7(struct wil6210_priv *wil, uint order)
{
	struct wil_ring *vring = &wil->ring_rx;
	int rc;

	FUNC0(wil, "rx_init\n");

	if (vring->va) {
		FUNC1(wil, "Rx ring already allocated\n");
		return -EINVAL;
	}

	FUNC2(wil);

	vring->size = 1 << order;
	vring->is_rx = true;
	rc = FUNC4(wil, vring);
	if (rc)
		return rc;

	rc = FUNC6(wil, vring);
	if (rc)
		goto err_free;

	rc = FUNC3(wil, vring->size);
	if (rc)
		goto err_free;

	return 0;
 err_free:
	FUNC5(wil, vring);

	return rc;
}