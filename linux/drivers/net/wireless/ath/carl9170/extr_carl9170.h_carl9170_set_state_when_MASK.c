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
struct ar9170 {int /*<<< orphan*/  state_lock; } ;
typedef  enum carl9170_device_state { ____Placeholder_carl9170_device_state } carl9170_device_state ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ar9170*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ar9170*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC4(struct ar9170 *ar,
	enum carl9170_device_state min, enum carl9170_device_state newstate)
{
	unsigned long flags;

	FUNC2(&ar->state_lock, flags);
	if (FUNC0(ar, min))
		FUNC1(ar, newstate);
	FUNC3(&ar->state_lock, flags);
}