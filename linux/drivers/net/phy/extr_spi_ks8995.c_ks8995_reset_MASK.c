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
struct ks8995_switch {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KS8995_RESET_DELAY ; 
 int FUNC0 (struct ks8995_switch*) ; 
 int FUNC1 (struct ks8995_switch*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ks8995_switch *ks)
{
	int err;

	err = FUNC1(ks);
	if (err)
		return err;

	FUNC2(KS8995_RESET_DELAY);

	return FUNC0(ks);
}