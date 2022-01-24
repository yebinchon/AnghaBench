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
struct ar5523 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ar5523*,char*,int) ; 
 int FUNC1 (struct ar5523*) ; 
 int FUNC2 (struct ar5523*) ; 
 int FUNC3 (struct ar5523*) ; 

__attribute__((used)) static int FUNC4(struct ar5523 *ar)
{
	int error;

	error = FUNC3(ar);
	if (error) {
		FUNC0(ar, "could not set chan, error %d\n", error);
		goto out_err;
	}

	/* reset Tx rings */
	error = FUNC2(ar);
	if (error) {
		FUNC0(ar, "could not reset Tx queues, error %d\n",
			   error);
		goto out_err;
	}
	/* set Tx rings WME properties */
	error = FUNC1(ar);
	if (error)
		FUNC0(ar, "could not init wme, error %d\n", error);

out_err:
	return error;
}