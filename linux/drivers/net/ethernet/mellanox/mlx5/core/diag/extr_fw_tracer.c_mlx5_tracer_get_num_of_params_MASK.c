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

/* Variables and functions */
 int /*<<< orphan*/  PARAM_CHAR ; 
 int /*<<< orphan*/  REPLACE_64_VAL_PARM ; 
 int /*<<< orphan*/  VAL_PARM ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(char *str)
{
	char *substr, *pstr = str;
	int num_of_params = 0;

	/* replace %llx with %x%x */
	substr = FUNC1(pstr, VAL_PARM);
	while (substr) {
		FUNC0(substr, REPLACE_64_VAL_PARM, 4);
		pstr = substr;
		substr = FUNC1(pstr, VAL_PARM);
	}

	/* count all the % characters */
	substr = FUNC1(str, PARAM_CHAR);
	while (substr) {
		num_of_params += 1;
		str = substr + 1;
		substr = FUNC1(str, PARAM_CHAR);
	}

	return num_of_params;
}