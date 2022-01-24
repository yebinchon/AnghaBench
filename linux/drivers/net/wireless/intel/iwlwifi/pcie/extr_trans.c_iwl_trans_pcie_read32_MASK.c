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
typedef  scalar_t__ u32 ;
struct iwl_trans {int dummy; } ;
struct TYPE_2__ {scalar_t__ hw_base; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct iwl_trans*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

__attribute__((used)) static u32 FUNC2(struct iwl_trans *trans, u32 ofs)
{
	return FUNC1(FUNC0(trans)->hw_base + ofs);
}