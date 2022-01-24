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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  lp; struct vio_net_desc* desc_buf; } ;
struct vnet_port {TYPE_1__ vio; } ;
struct vio_net_desc {int dummy; } ;
struct vio_dring_state {int entry_size; int /*<<< orphan*/  ncookies; int /*<<< orphan*/  cookies; } ;

/* Variables and functions */
 struct vio_net_desc* FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct vio_net_desc*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct vio_net_desc *FUNC2(struct vnet_port *port,
					struct vio_dring_state *dr,
					u32 index)
{
	struct vio_net_desc *desc = port->vio.desc_buf;
	int err;

	err = FUNC1(port->vio.lp, desc, dr->entry_size,
				  (index * dr->entry_size),
				  dr->cookies, dr->ncookies);
	if (err < 0)
		return FUNC0(err);

	return desc;
}