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
struct s2io_nic {scalar_t__ rxd_mode; struct net_device* dev; } ;
struct net_device {scalar_t__ mtu; } ;
struct RxD_t {int /*<<< orphan*/  Control_2; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUF0_LEN ; 
 scalar_t__ NET_IP_ALIGN ; 
 scalar_t__ RXD_MODE_1 ; 
 scalar_t__ RXD_MODE_3B ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct s2io_nic *sp, struct RxD_t *rxdp,
				int size)
{
	struct net_device *dev = sp->dev;
	if (sp->rxd_mode == RXD_MODE_1) {
		rxdp->Control_2 = FUNC0(size - NET_IP_ALIGN);
	} else if (sp->rxd_mode == RXD_MODE_3B) {
		rxdp->Control_2 = FUNC1(BUF0_LEN);
		rxdp->Control_2 |= FUNC2(1);
		rxdp->Control_2 |= FUNC3(dev->mtu + 4);
	}
}