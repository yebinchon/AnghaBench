#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  active; } ;
struct pvc_device {TYPE_2__ state; TYPE_4__* frad; int /*<<< orphan*/  open_count; } ;
struct net_device {struct pvc_device* ml_priv; } ;
typedef  int /*<<< orphan*/  hdlc_device ;
struct TYPE_9__ {int flags; } ;
struct TYPE_6__ {scalar_t__ lmi; } ;
struct TYPE_8__ {int dce_changed; TYPE_1__ settings; } ;

/* Variables and functions */
 int EIO ; 
 int IFF_UP ; 
 scalar_t__ LMI_NONE ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct pvc_device*) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev)
{
	struct pvc_device *pvc = dev->ml_priv;

	if ((pvc->frad->flags & IFF_UP) == 0)
		return -EIO;  /* Frad must be UP in order to activate PVC */

	if (pvc->open_count++ == 0) {
		hdlc_device *hdlc = FUNC0(pvc->frad);
		if (FUNC3(hdlc)->settings.lmi == LMI_NONE)
			pvc->state.active = FUNC1(pvc->frad);

		FUNC2(pvc->state.active, pvc);
		FUNC3(hdlc)->dce_changed = 1;
	}
	return 0;
}