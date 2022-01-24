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
struct usbnet {int /*<<< orphan*/  net; } ;

/* Variables and functions */
 int PL_PEER_E ; 
 int PL_RESET_IN ; 
 int PL_RESET_OUT ; 
 int PL_S_EN ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC0 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC1 (struct usbnet*) ; 
 int FUNC2 (struct usbnet*,int) ; 

__attribute__((used)) static int FUNC3(struct usbnet *dev)
{
	int status;

	/* some units seem to need this reset, others reject it utterly.
	 * FIXME be more like "naplink" or windows drivers.
	 */
	status = FUNC2(dev,
		PL_S_EN|PL_RESET_OUT|PL_RESET_IN|PL_PEER_E);
	if (status != 0 && FUNC1(dev))
		FUNC0(dev, link, dev->net, "pl_reset --> %d\n", status);
	return 0;
}