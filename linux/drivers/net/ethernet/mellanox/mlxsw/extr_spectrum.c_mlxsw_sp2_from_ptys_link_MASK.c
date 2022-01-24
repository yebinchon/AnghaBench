#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct mlxsw_sp {int dummy; } ;
struct TYPE_3__ {int mask; int mask_width; } ;

/* Variables and functions */
 int MLXSW_SP2_PORT_LINK_MODE_LEN ; 
 TYPE_1__* mlxsw_sp2_port_link_mode ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,unsigned long*) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2(struct mlxsw_sp *mlxsw_sp, u32 ptys_eth_proto,
			 u8 width, unsigned long *mode)
{
	u8 mask_width = FUNC1(width);
	int i;

	for (i = 0; i < MLXSW_SP2_PORT_LINK_MODE_LEN; i++) {
		if ((ptys_eth_proto & mlxsw_sp2_port_link_mode[i].mask) &&
		    (mask_width & mlxsw_sp2_port_link_mode[i].mask_width))
			FUNC0(&mlxsw_sp2_port_link_mode[i],
						  mode);
	}
}