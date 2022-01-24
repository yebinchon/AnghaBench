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
struct pvc_device {int dummy; } ;
struct net_device {int flags; } ;
typedef  int /*<<< orphan*/  hdlc_device ;
struct TYPE_2__ {int dce_changed; int /*<<< orphan*/  dce_pvc_count; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOENT ; 
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct pvc_device* FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 struct net_device** FUNC2 (struct pvc_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pvc_device*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(hdlc_device *hdlc, unsigned int dlci, int type)
{
	struct pvc_device *pvc;
	struct net_device *dev;

	if ((pvc = FUNC1(hdlc, dlci)) == NULL)
		return -ENOENT;

	if ((dev = *FUNC2(pvc, type)) == NULL)
		return -ENOENT;

	if (dev->flags & IFF_UP)
		return -EBUSY;		/* PVC in use */

	FUNC5(dev); /* the destructor will free_netdev(dev) */
	*FUNC2(pvc, type) = NULL;

	if (!FUNC3(pvc)) {
		FUNC4(hdlc)->dce_pvc_count--;
		FUNC4(hdlc)->dce_changed = 1;
	}
	FUNC0(hdlc);
	return 0;
}