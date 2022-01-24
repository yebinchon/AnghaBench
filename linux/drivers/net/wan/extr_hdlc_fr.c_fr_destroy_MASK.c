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
struct pvc_device {scalar_t__ ether; scalar_t__ main; struct pvc_device* next; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  hdlc_device ;
struct TYPE_2__ {int dce_changed; scalar_t__ dce_pvc_count; struct pvc_device* first_pvc; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct pvc_device*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct net_device *frad)
{
	hdlc_device *hdlc = FUNC0(frad);
	struct pvc_device *pvc = FUNC2(hdlc)->first_pvc;
	FUNC2(hdlc)->first_pvc = NULL; /* All PVCs destroyed */
	FUNC2(hdlc)->dce_pvc_count = 0;
	FUNC2(hdlc)->dce_changed = 1;

	while (pvc) {
		struct pvc_device *next = pvc->next;
		/* destructors will free_netdev() main and ether */
		if (pvc->main)
			FUNC3(pvc->main);

		if (pvc->ether)
			FUNC3(pvc->ether);

		FUNC1(pvc);
		pvc = next;
	}
}