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
typedef  int u8 ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_GET_MIB ; 
 int /*<<< orphan*/  CMD_JOIN ; 
 int /*<<< orphan*/  CMD_RADIO_OFF ; 
 int /*<<< orphan*/  CMD_RADIO_ON ; 
 int /*<<< orphan*/  CMD_SCAN ; 
 int /*<<< orphan*/  CMD_SET_MIB ; 
 int /*<<< orphan*/  CMD_STARTUP ; 
 int /*<<< orphan*/  CMD_START_IBSS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *FUNC1(u8 cmd_status)
{
	switch (cmd_status) {
		FUNC0(CMD_SET_MIB);
		FUNC0(CMD_GET_MIB);
		FUNC0(CMD_SCAN);
		FUNC0(CMD_JOIN);
		FUNC0(CMD_START_IBSS);
		FUNC0(CMD_RADIO_ON);
		FUNC0(CMD_RADIO_OFF);
		FUNC0(CMD_STARTUP);
	}

	return "UNKNOWN";
}