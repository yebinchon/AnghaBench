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
struct xdp_frame {int len; } ;

/* Variables and functions */
 int FUNC0 (void*) ; 
 scalar_t__ FUNC1 (void*) ; 
 scalar_t__ FUNC2 (void*) ; 
 struct xdp_frame* FUNC3 (void*) ; 

__attribute__((used)) static int FUNC4(void *ptr)
{
	if (FUNC1(ptr)) {
		if (FUNC2(ptr)) {
			struct xdp_frame *xdpf = FUNC3(ptr);

			return xdpf->len;
		}
		return FUNC0(ptr);
	} else {
		return 0;
	}
}