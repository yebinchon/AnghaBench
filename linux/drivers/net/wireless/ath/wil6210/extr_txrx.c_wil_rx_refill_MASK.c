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
typedef  int u32 ;
struct wil_ring {int swhead; int swtail; int /*<<< orphan*/  hwtail; } ;
struct wil6210_priv {struct wil_ring ring_rx; struct net_device* main_ndev; } ;
struct net_device {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_IEEE80211_RADIOTAP ; 
 int WIL6210_RTAP_SIZE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct wil6210_priv*,char*,int,int) ; 
 int FUNC2 (struct wil_ring*) ; 
 int FUNC3 (struct wil6210_priv*,struct wil_ring*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct wil6210_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct wil6210_priv *wil, int count)
{
	struct net_device *ndev = wil->main_ndev;
	struct wil_ring *v = &wil->ring_rx;
	u32 next_tail;
	int rc = 0;
	int headroom = ndev->type == ARPHRD_IEEE80211_RADIOTAP ?
			WIL6210_RTAP_SIZE : 0;

	for (; next_tail = FUNC2(v),
	     (next_tail != v->swhead) && (count-- > 0);
	     v->swtail = next_tail) {
		rc = FUNC3(wil, v, v->swtail, headroom);
		if (FUNC0(rc)) {
			FUNC1(wil, "Error %d in rx refill[%d]\n",
					    rc, v->swtail);
			break;
		}
	}

	/* make sure all writes to descriptors (shared memory) are done before
	 * committing them to HW
	 */
	FUNC5();

	FUNC4(wil, v->hwtail, v->swtail);

	return rc;
}