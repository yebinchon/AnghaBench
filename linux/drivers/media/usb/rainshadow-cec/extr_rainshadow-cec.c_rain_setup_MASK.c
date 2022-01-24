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
typedef  int /*<<< orphan*/  u16 ;
struct serio {int dummy; } ;
struct rain {scalar_t__ cmd_reply; int /*<<< orphan*/  dev; } ;
struct cec_log_addrs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int FUNC1 (struct rain*,char*,char*) ; 

__attribute__((used)) static int FUNC2(struct rain *rain, struct serio *serio,
			struct cec_log_addrs *log_addrs, u16 *pa)
{
	int err;

	err = FUNC1(rain, "R", "REV");
	if (err)
		return err;
	FUNC0(rain->dev, "Firmware version %s\n", rain->cmd_reply + 4);

	err = FUNC1(rain, "Q 1", "QTY");
	if (err)
		return err;
	err = FUNC1(rain, "c0000", "CFG");
	if (err)
		return err;
	return FUNC1(rain, "A F 0000", "ADR");
}