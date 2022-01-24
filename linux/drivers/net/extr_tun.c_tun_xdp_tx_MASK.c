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
struct xdp_frame {int dummy; } ;
struct xdp_buff {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EOVERFLOW ; 
 int /*<<< orphan*/  XDP_XMIT_FLUSH ; 
 struct xdp_frame* FUNC0 (struct xdp_buff*) ; 
 int FUNC1 (struct net_device*,int,struct xdp_frame**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, struct xdp_buff *xdp)
{
	struct xdp_frame *frame = FUNC0(xdp);

	if (FUNC2(!frame))
		return -EOVERFLOW;

	return FUNC1(dev, 1, &frame, XDP_XMIT_FLUSH);
}