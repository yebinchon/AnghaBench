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
typedef  int u16 ;
struct ks_net {int cmd_reg_cache; int /*<<< orphan*/  hw_addr; int /*<<< orphan*/  hw_addr_cmd; } ;

/* Variables and functions */
 int BE0 ; 
 int BE1 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u16 FUNC2(struct ks_net *ks, int offset)
{
	ks->cmd_reg_cache = (u16)offset | ((BE1 | BE0) << (offset & 0x02));
	FUNC1(ks->cmd_reg_cache, ks->hw_addr_cmd);
	return FUNC0(ks->hw_addr);
}