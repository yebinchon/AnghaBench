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
struct ar5523_cmd_ledsteady {void* ledmode; void* lednum; } ;
struct ar5523 {int dummy; } ;
typedef  int /*<<< orphan*/  led ;

/* Variables and functions */
 int UATH_LED_LINK ; 
 int /*<<< orphan*/  WDCMSG_SET_LED_STEADY ; 
 int FUNC0 (struct ar5523*,int /*<<< orphan*/ ,struct ar5523_cmd_ledsteady*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ar5523*,char*,char*,char*) ; 
 void* FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct ar5523 *ar, int lednum, int ledmode)
{
	struct ar5523_cmd_ledsteady led;

	led.lednum = FUNC2(lednum);
	led.ledmode = FUNC2(ledmode);

	FUNC1(ar, "set %s led %s (steady)\n",
		   (lednum == UATH_LED_LINK) ? "link" : "activity",
		   ledmode ? "on" : "off");
	return FUNC0(ar, WDCMSG_SET_LED_STEADY, &led, sizeof(led),
				 0);
}