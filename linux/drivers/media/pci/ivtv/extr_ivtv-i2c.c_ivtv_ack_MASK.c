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
 int /*<<< orphan*/  FUNC3 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC4 (struct ivtv*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ivtv*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ivtv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ivtv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct ivtv *itv)
{
	int ret = 0;

	if (FUNC2(itv) == 1) {
		FUNC0("SCL was high starting an ack\n");
		FUNC4(itv, 0);
		if (!FUNC6(itv, 0)) {
			FUNC1("Could not set SCL low starting an ack\n");
			return -EREMOTEIO;
		}
	}
	FUNC5(itv, 1);
	FUNC3(itv);
	FUNC4(itv, 1);
	if (!FUNC7(itv, 0)) {
		FUNC1("Slave did not ack\n");
		ret = -EREMOTEIO;
	}
	FUNC4(itv, 0);
	if (!FUNC6(itv, 0)) {
		FUNC1("Failed to set SCL low after ACK\n");
		ret = -EREMOTEIO;
	}
	return ret;
}