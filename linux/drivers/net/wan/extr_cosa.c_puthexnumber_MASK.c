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
struct cosa_data {int /*<<< orphan*/  num; } ;

/* Variables and functions */
 char FUNC0 (struct cosa_data*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct cosa_data*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static int FUNC4(struct cosa_data *cosa, int number)
{
	char temp[5];
	int i;

	/* Well, I should probably replace this by something faster. */
	FUNC3(temp, "%04X", number);
	for (i=0; i<4; i++) {
		if (FUNC2(cosa, temp[i]) == -1) {
			FUNC1("cosa%d: puthexnumber failed to write byte %d\n",
				  cosa->num, i);
			return -1-2*i;
		}
		if (FUNC0(cosa) != temp[i]) {
			FUNC1("cosa%d: puthexhumber failed to read echo of byte %d\n",
				  cosa->num, i);
			return -2-2*i;
		}
	}
	return 0;
}