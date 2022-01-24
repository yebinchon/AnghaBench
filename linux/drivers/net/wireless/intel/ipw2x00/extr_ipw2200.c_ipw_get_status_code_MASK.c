#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_3__ {int status; char const* reason; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* ipw_status_codes ; 

__attribute__((used)) static const char *FUNC1(u16 status)
{
	int i;
	for (i = 0; i < FUNC0(ipw_status_codes); i++)
		if (ipw_status_codes[i].status == (status & 0xff))
			return ipw_status_codes[i].reason;
	return "Unknown status value.";
}