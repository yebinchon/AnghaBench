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
struct baycom_state {int options; } ;

/* Variables and functions */
 int BAYCOM_OPTIONS_SOFTDCD ; 
 int /*<<< orphan*/  FUNC0 (char const*,char) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC2(struct baycom_state *bc, const char *modestr)
{
	if (!FUNC1(modestr, "picpar", 6))
		bc->options = 0;
	else if (!FUNC1(modestr, "par96", 5))
		bc->options = BAYCOM_OPTIONS_SOFTDCD;
	else
		bc->options = !!FUNC0(modestr, '*');
	return 0;
}