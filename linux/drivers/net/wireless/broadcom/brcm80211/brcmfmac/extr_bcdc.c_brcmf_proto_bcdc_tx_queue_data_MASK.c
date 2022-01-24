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
struct sk_buff {int dummy; } ;
struct brcmf_pub {TYPE_1__* proto; } ;
struct brcmf_if {int dummy; } ;
struct brcmf_bcdc {int /*<<< orphan*/  fws; } ;
struct TYPE_2__ {struct brcmf_bcdc* pd; } ;

/* Variables and functions */
 int FUNC0 (struct brcmf_if*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct brcmf_if* FUNC2 (struct brcmf_pub*,int) ; 
 int FUNC3 (struct brcmf_pub*,int,int /*<<< orphan*/ ,struct sk_buff*) ; 

__attribute__((used)) static int FUNC4(struct brcmf_pub *drvr, int ifidx,
					  struct sk_buff *skb)
{
	struct brcmf_if *ifp = FUNC2(drvr, ifidx);
	struct brcmf_bcdc *bcdc = drvr->proto->pd;

	if (!FUNC1(bcdc->fws))
		return FUNC3(drvr, ifidx, 0, skb);

	return FUNC0(ifp, skb);
}