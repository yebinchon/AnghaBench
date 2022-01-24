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
typedef  scalar_t__ u32 ;
struct vio_dring_state {scalar_t__ cons; scalar_t__ prod; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vio_dring_state*,scalar_t__) ; 

__attribute__((used)) static int FUNC1(struct vio_dring_state *dr, u32 end)
{
	u32 idx = dr->cons;
	int found = 0;

	while (idx != dr->prod) {
		if (idx == end) {
			found = 1;
			break;
		}
		idx = FUNC0(dr, idx);
	}
	return found;
}