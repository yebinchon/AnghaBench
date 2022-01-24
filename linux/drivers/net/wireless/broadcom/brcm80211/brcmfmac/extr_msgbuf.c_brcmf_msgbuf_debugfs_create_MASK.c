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
struct brcmf_pub {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct brcmf_pub*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  brcmf_msgbuf_stats_read ; 

__attribute__((used)) static void FUNC1(struct brcmf_pub *drvr)
{
	FUNC0(drvr, "msgbuf_stats", brcmf_msgbuf_stats_read);
}