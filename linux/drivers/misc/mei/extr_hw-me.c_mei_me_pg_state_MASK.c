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
struct mei_me_hw {int pg_state; } ;
struct mei_device {int dummy; } ;
typedef  enum mei_pg_state { ____Placeholder_mei_pg_state } mei_pg_state ;

/* Variables and functions */
 struct mei_me_hw* FUNC0 (struct mei_device*) ; 

__attribute__((used)) static inline enum mei_pg_state FUNC1(struct mei_device *dev)
{
	struct mei_me_hw *hw = FUNC0(dev);

	return hw->pg_state;
}