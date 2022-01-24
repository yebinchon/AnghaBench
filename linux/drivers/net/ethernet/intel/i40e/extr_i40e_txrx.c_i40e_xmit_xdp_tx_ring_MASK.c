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
struct i40e_ring {int dummy; } ;

/* Variables and functions */
 int I40E_XDP_CONSUMED ; 
 struct xdp_frame* FUNC0 (struct xdp_buff*) ; 
 int FUNC1 (struct xdp_frame*,struct i40e_ring*) ; 
 scalar_t__ FUNC2 (int) ; 

int FUNC3(struct xdp_buff *xdp, struct i40e_ring *xdp_ring)
{
	struct xdp_frame *xdpf = FUNC0(xdp);

	if (FUNC2(!xdpf))
		return I40E_XDP_CONSUMED;

	return FUNC1(xdpf, xdp_ring);
}