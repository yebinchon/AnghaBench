#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct brcmf_pub {int /*<<< orphan*/ * proto; TYPE_1__* bus_if; } ;
struct TYPE_2__ {scalar_t__ proto_type; } ;

/* Variables and functions */
 scalar_t__ BRCMF_PROTO_BCDC ; 
 scalar_t__ BRCMF_PROTO_MSGBUF ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_pub*) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmf_pub*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct brcmf_pub *drvr)
{
	FUNC0(TRACE, "Enter\n");

	if (drvr->proto) {
		if (drvr->bus_if->proto_type == BRCMF_PROTO_BCDC)
			FUNC1(drvr);
		else if (drvr->bus_if->proto_type == BRCMF_PROTO_MSGBUF)
			FUNC2(drvr);
		FUNC3(drvr->proto);
		drvr->proto = NULL;
	}
}