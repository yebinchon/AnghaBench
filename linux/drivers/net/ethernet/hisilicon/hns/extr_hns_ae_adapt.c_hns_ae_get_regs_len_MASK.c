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
struct hnae_vf_cb {TYPE_1__* mac_cb; } ;
struct hnae_handle {int q_num; } ;
struct TYPE_2__ {scalar_t__ mac_type; } ;

/* Variables and functions */
 scalar_t__ HNAE_PORT_SERVICE ; 
 struct hnae_vf_cb* FUNC0 (struct hnae_handle*) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct hnae_handle *handle)
{
	u32 total_num;
	struct hnae_vf_cb *vf_cb = FUNC0(handle);

	total_num = FUNC3();
	total_num += FUNC4();
	total_num += FUNC5() * handle->q_num;
	total_num += FUNC2(vf_cb->mac_cb);

	if (vf_cb->mac_cb->mac_type == HNAE_PORT_SERVICE)
		total_num += FUNC1();

	return total_num;
}