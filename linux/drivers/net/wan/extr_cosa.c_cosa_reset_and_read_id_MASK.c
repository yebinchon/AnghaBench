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
struct cosa_data {int dummy; } ;

/* Variables and functions */
 int COSA_MAX_ID_STRING ; 
 int /*<<< orphan*/  SR_RST ; 
 int /*<<< orphan*/  FUNC0 (struct cosa_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct cosa_data*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct cosa_data*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct cosa_data *cosa, char *idstring)
{
	int i=0, id=0, prev=0, curr=0;

	/* Reset the card ... */
	FUNC1(cosa, 0);
	FUNC0(cosa);
	FUNC1(cosa, SR_RST);
	FUNC3(500);
	/* Disable all IRQs from the card */
	FUNC1(cosa, 0);

	/*
	 * Try to read the ID string. The card then prints out the
	 * identification string ended by the "\n\x2e".
	 *
	 * The following loop is indexed through i (instead of id)
	 * to avoid looping forever when for any reason
	 * the port returns '\r', '\n' or '\x2e' permanently.
	 */
	for (i=0; i<COSA_MAX_ID_STRING-1; i++, prev=curr) {
		if ((curr = FUNC2(cosa)) == -1) {
			return -1;
		}
		curr &= 0xff;
		if (curr != '\r' && curr != '\n' && curr != 0x2e)
			idstring[id++] = curr;
		if (curr == 0x2e && prev == '\n')
			break;
	}
	/* Perhaps we should fail when i==COSA_MAX_ID_STRING-1 ? */
	idstring[id] = '\0';
	return id;
}