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
struct hnae_vf_cb {TYPE_1__* mac_cb; } ;
struct hnae_queue {int /*<<< orphan*/  handle; } ;
struct TYPE_2__ {scalar_t__ mac_type; } ;

/* Variables and functions */
 scalar_t__ HNAE_PORT_SERVICE ; 
 struct hnae_vf_cb* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hnae_queue*) ; 

__attribute__((used)) static void FUNC2(struct hnae_queue *q)
{
	struct hnae_vf_cb *vf_cb = FUNC0(q->handle);

	if (vf_cb->mac_cb->mac_type == HNAE_PORT_SERVICE)
		FUNC1(q);
}