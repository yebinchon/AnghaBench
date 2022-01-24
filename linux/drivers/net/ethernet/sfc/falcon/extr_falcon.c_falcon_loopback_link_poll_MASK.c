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
struct ef4_link_state {int fd; int up; int speed; int /*<<< orphan*/  fc; } ;
struct ef4_nic {struct ef4_link_state link_state; int /*<<< orphan*/  wanted_fc; int /*<<< orphan*/  mac_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ef4_link_state*,struct ef4_link_state*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC4(struct ef4_nic *efx)
{
	struct ef4_link_state old_state = efx->link_state;

	FUNC1(!FUNC3(&efx->mac_lock));
	FUNC1(!FUNC0(efx));

	efx->link_state.fd = true;
	efx->link_state.fc = efx->wanted_fc;
	efx->link_state.up = true;
	efx->link_state.speed = 10000;

	return !FUNC2(&efx->link_state, &old_state);
}