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
struct ef4_link_state {int speed; int fd; int /*<<< orphan*/  up; int /*<<< orphan*/  fc; } ;
struct ef4_nic {struct ef4_link_state link_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ef4_link_state*,struct ef4_link_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC2 (struct ef4_nic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ef4_nic*) ; 

__attribute__((used)) static bool FUNC4(struct ef4_nic *efx)
{
	struct ef4_link_state old_state = efx->link_state;

	efx->link_state.up = FUNC3(efx);
	efx->link_state.speed = 10000;
	efx->link_state.fd = true;
	efx->link_state.fc = FUNC1(efx);

	FUNC2(efx, efx->link_state.up);

	return !FUNC0(&efx->link_state, &old_state);
}