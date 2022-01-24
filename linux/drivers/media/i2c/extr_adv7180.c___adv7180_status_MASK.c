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
typedef  int /*<<< orphan*/  v4l2_std_id ;
typedef  int /*<<< orphan*/  u32 ;
struct adv7180_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADV7180_REG_STATUS1 ; 
 int FUNC0 (struct adv7180_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct adv7180_state *state, u32 *status,
			    v4l2_std_id *std)
{
	int status1 = FUNC0(state, ADV7180_REG_STATUS1);

	if (status1 < 0)
		return status1;

	if (status)
		*status = FUNC1(status1);
	if (std)
		*std = FUNC2(status1);

	return 0;
}