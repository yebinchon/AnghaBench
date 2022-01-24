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
struct ivtv {int dummy; } ;

/* Variables and functions */
 int EREMOTEIO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct ivtv*) ; 
 int FUNC3 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC4 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC5 (struct ivtv*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ivtv*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ivtv*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ivtv*,int) ; 

__attribute__((used)) static int FUNC9(struct ivtv *itv)
{
	int sda;

	sda = FUNC3(itv);
	if (sda != 1) {
		FUNC0("SDA was low at start\n");
		FUNC6(itv, 1);
		if (!FUNC8(itv, 1)) {
			FUNC1("SDA stuck low\n");
			return -EREMOTEIO;
		}
	}
	if (FUNC2(itv) != 1) {
		FUNC5(itv, 1);
		if (!FUNC7(itv, 1)) {
			FUNC1("SCL stuck low at start\n");
			return -EREMOTEIO;
		}
	}
	FUNC6(itv, 0);
	FUNC4(itv);
	return 0;
}