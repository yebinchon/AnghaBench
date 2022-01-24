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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct brcmf_pub {int /*<<< orphan*/  bus_if; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_pub*,int,int /*<<< orphan*/ ,struct sk_buff*) ; 

__attribute__((used)) static int
FUNC2(struct brcmf_pub *drvr, int ifidx, u8 offset,
			struct sk_buff *pktbuf)
{
	FUNC1(drvr, ifidx, offset, pktbuf);
	return FUNC0(drvr->bus_if, pktbuf);
}