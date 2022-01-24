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
struct r8152 {int dummy; } ;

/* Variables and functions */
 int DIS_SDSAVE ; 
 int ENPDNPS ; 
 int ENPWRSAVE ; 
 int LINKENA ; 
 int /*<<< orphan*/  OCP_ALDPS_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct r8152*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct r8152 *tp, bool enable)
{
	if (enable) {
		FUNC1(tp, OCP_ALDPS_CONFIG, ENPWRSAVE | ENPDNPS |
						    LINKENA | DIS_SDSAVE);
	} else {
		FUNC1(tp, OCP_ALDPS_CONFIG, ENPDNPS | LINKENA |
						    DIS_SDSAVE);
		FUNC0(20);
	}
}