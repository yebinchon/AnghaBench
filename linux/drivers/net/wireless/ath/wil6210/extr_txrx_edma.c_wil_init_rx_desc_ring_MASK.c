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
typedef  int /*<<< orphan*/  u16 ;
struct wil_ring {int is_rx; int /*<<< orphan*/  size; } ;
struct wil6210_priv {struct wil_ring ring_rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wil6210_priv*,char*) ; 
 int FUNC1 (struct wil6210_priv*,struct wil_ring*) ; 
 int /*<<< orphan*/  FUNC2 (struct wil6210_priv*,struct wil_ring*) ; 
 int FUNC3 (struct wil6210_priv*,int) ; 

__attribute__((used)) static int FUNC4(struct wil6210_priv *wil, u16 desc_ring_size,
				 int status_ring_id)
{
	struct wil_ring *ring = &wil->ring_rx;
	int rc;

	FUNC0(wil, "init RX desc ring\n");

	ring->size = desc_ring_size;
	ring->is_rx = true;
	rc = FUNC1(wil, ring);
	if (rc)
		return rc;

	rc = FUNC3(wil, status_ring_id);
	if (rc)
		goto out_free;

	return 0;
out_free:
	FUNC2(wil, ring);
	return rc;
}